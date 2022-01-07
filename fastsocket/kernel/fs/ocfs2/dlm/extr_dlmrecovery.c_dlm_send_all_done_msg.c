
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_reco_data_done {int dead_node; int node_idx; } ;
struct dlm_ctxt {int name; int key; int node_num; } ;
typedef int done_msg ;


 int BUG () ;
 int DLM_RECO_DATA_DONE_MSG ;
 int ML_ERROR ;
 int dlm_is_host_down (int) ;
 int memset (struct dlm_reco_data_done*,int ,int) ;
 int mlog (int ,char*,int ,int ,...) ;
 int mlog_errno (int) ;
 int o2net_send_message (int ,int ,struct dlm_reco_data_done*,int,int ,int*) ;

__attribute__((used)) static int dlm_send_all_done_msg(struct dlm_ctxt *dlm, u8 dead_node, u8 send_to)
{
 int ret, tmpret;
 struct dlm_reco_data_done done_msg;

 memset(&done_msg, 0, sizeof(done_msg));
 done_msg.node_idx = dlm->node_num;
 done_msg.dead_node = dead_node;
 mlog(0, "sending DATA DONE message to %u, "
      "my node=%u, dead node=%u\n", send_to, done_msg.node_idx,
      done_msg.dead_node);

 ret = o2net_send_message(DLM_RECO_DATA_DONE_MSG, dlm->key, &done_msg,
     sizeof(done_msg), send_to, &tmpret);
 if (ret < 0) {
  if (!dlm_is_host_down(ret)) {
   mlog_errno(ret);
   mlog(ML_ERROR, "%s: unknown error sending data-done "
        "to %u\n", dlm->name, send_to);
   BUG();
  }
 } else
  ret = tmpret;
 return ret;
}
