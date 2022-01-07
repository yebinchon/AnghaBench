
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_node_iter {int dummy; } ;
struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {int node_num; int name; int spinlock; int recovery_map; int domain_map; } ;


 int BUG () ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int EAGAIN ;
 int ML_NOTICE ;
 int dlm_do_master_requery (struct dlm_ctxt*,struct dlm_lock_resource*,int,int *) ;
 int dlm_is_host_down (int) ;
 int dlm_node_iter_init (int ,struct dlm_node_iter*) ;
 int dlm_node_iter_next (struct dlm_node_iter*) ;
 int mlog (int ,char*,int ,int,...) ;
 int mlog_errno (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int dlm_pre_master_reco_lockres(struct dlm_ctxt *dlm,
           struct dlm_lock_resource *res)
{
 struct dlm_node_iter iter;
 int nodenum;
 int ret = 0;
 u8 master = DLM_LOCK_RES_OWNER_UNKNOWN;

 spin_lock(&dlm->spinlock);
 dlm_node_iter_init(dlm->domain_map, &iter);
 spin_unlock(&dlm->spinlock);

 while ((nodenum = dlm_node_iter_next(&iter)) >= 0) {

  if (nodenum == dlm->node_num)
   continue;
  ret = dlm_do_master_requery(dlm, res, nodenum, &master);
  if (ret < 0) {
   mlog_errno(ret);
   if (!dlm_is_host_down(ret))
    BUG();


   ret = 0;
  }

  if (master != DLM_LOCK_RES_OWNER_UNKNOWN) {

   spin_lock(&dlm->spinlock);
   if (test_bit(master, dlm->recovery_map)) {
    mlog(ML_NOTICE, "%s: node %u has not seen "
         "node %u go down yet, and thinks the "
         "dead node is mastering the recovery "
         "lock.  must wait.\n", dlm->name,
         nodenum, master);
    ret = -EAGAIN;
   }
   spin_unlock(&dlm->spinlock);
   mlog(0, "%s: reco lock master is %u\n", dlm->name,
        master);
   break;
  }
 }
 return ret;
}
