
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_join_ctxt {int yes_resp_map; int live_map; } ;
struct dlm_ctxt {int node_num; int spinlock; int num_joins; int dlm_state; int domain_map; int live_nodes_map; } ;
typedef enum dlm_query_join_response_code { ____Placeholder_dlm_query_join_response_code } dlm_query_join_response_code ;


 int DLM_CTXT_JOINED ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int JOIN_DISALLOW ;
 int JOIN_OK ;
 int O2NM_MAX_NODES ;
 int __dlm_print_nodes (struct dlm_ctxt*) ;
 int __dlm_set_joining_node (struct dlm_ctxt*,int) ;
 int dlm_domain_lock ;
 int dlm_request_join (struct dlm_ctxt*,int,int*) ;
 int dlm_send_join_asserts (struct dlm_ctxt*,int ) ;
 int dlm_send_join_cancels (struct dlm_ctxt*,int ,int) ;
 scalar_t__ dlm_should_restart_join (struct dlm_ctxt*,struct domain_join_ctxt*,int) ;
 int find_next_bit (int ,int,int) ;
 int kfree (struct domain_join_ctxt*) ;
 struct domain_join_ctxt* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,struct dlm_ctxt*) ;
 int mlog_errno (int) ;
 int o2hb_fill_node_map (int ,int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_try_to_join_domain(struct dlm_ctxt *dlm)
{
 int status = 0, tmpstat, node;
 struct domain_join_ctxt *ctxt;
 enum dlm_query_join_response_code response = JOIN_DISALLOW;

 mlog_entry("%p", dlm);

 ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 if (!ctxt) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }




 o2hb_fill_node_map(dlm->live_nodes_map, sizeof(dlm->live_nodes_map));

 spin_lock(&dlm->spinlock);
 memcpy(ctxt->live_map, dlm->live_nodes_map, sizeof(ctxt->live_map));

 __dlm_set_joining_node(dlm, dlm->node_num);

 spin_unlock(&dlm->spinlock);

 node = -1;
 while ((node = find_next_bit(ctxt->live_map, O2NM_MAX_NODES,
         node + 1)) < O2NM_MAX_NODES) {
  if (node == dlm->node_num)
   continue;

  status = dlm_request_join(dlm, node, &response);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }



  if (response == JOIN_OK)
   set_bit(node, ctxt->yes_resp_map);

  if (dlm_should_restart_join(dlm, ctxt, response)) {
   status = -EAGAIN;
   goto bail;
  }
 }

 mlog(0, "Yay, done querying nodes!\n");





 spin_lock(&dlm->spinlock);
 memcpy(dlm->domain_map, ctxt->yes_resp_map,
        sizeof(ctxt->yes_resp_map));
 set_bit(dlm->node_num, dlm->domain_map);
 spin_unlock(&dlm->spinlock);

 dlm_send_join_asserts(dlm, ctxt->yes_resp_map);





 spin_lock(&dlm_domain_lock);
 dlm->dlm_state = DLM_CTXT_JOINED;
 dlm->num_joins++;
 spin_unlock(&dlm_domain_lock);

bail:
 spin_lock(&dlm->spinlock);
 __dlm_set_joining_node(dlm, DLM_LOCK_RES_OWNER_UNKNOWN);
 if (!status)
  __dlm_print_nodes(dlm);
 spin_unlock(&dlm->spinlock);

 if (ctxt) {

  if (status < 0) {
   tmpstat = dlm_send_join_cancels(dlm,
       ctxt->yes_resp_map,
       sizeof(ctxt->yes_resp_map));
   if (tmpstat < 0)
    mlog_errno(tmpstat);
  }
  kfree(ctxt);
 }

 mlog(0, "returning %d\n", status);
 return status;
}
