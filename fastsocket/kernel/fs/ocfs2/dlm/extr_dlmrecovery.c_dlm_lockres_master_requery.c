
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dlm_node_iter {int dummy; } ;
struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {int node_num; int spinlock; int domain_map; } ;


 int BUG () ;
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ;
 int dlm_do_master_requery (struct dlm_ctxt*,struct dlm_lock_resource*,int,scalar_t__*) ;
 int dlm_is_host_down (int) ;
 int dlm_node_iter_init (int ,struct dlm_node_iter*) ;
 int dlm_node_iter_next (struct dlm_node_iter*) ;
 int mlog (int ,char*,scalar_t__) ;
 int mlog_errno (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_lockres_master_requery(struct dlm_ctxt *dlm,
          struct dlm_lock_resource *res,
          u8 *real_master)
{
 struct dlm_node_iter iter;
 int nodenum;
 int ret = 0;

 *real_master = DLM_LOCK_RES_OWNER_UNKNOWN;
 spin_lock(&dlm->spinlock);
 dlm_node_iter_init(dlm->domain_map, &iter);
 spin_unlock(&dlm->spinlock);

 while ((nodenum = dlm_node_iter_next(&iter)) >= 0) {

  if (nodenum == dlm->node_num)
   continue;
  ret = dlm_do_master_requery(dlm, res, nodenum, real_master);
  if (ret < 0) {
   mlog_errno(ret);
   if (!dlm_is_host_down(ret))
    BUG();


  }
  if (*real_master != DLM_LOCK_RES_OWNER_UNKNOWN) {
   mlog(0, "lock master is %u\n", *real_master);
   break;
  }
 }
 return ret;
}
