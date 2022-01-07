
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int ignore_higher; int request_from; int flags; struct dlm_lock_resource* lockres; } ;
struct TYPE_5__ {TYPE_1__ am; } ;
struct dlm_work_item {TYPE_2__ u; struct dlm_ctxt* dlm; } ;
struct TYPE_6__ {int name; int len; } ;
struct dlm_lock_resource {int state; TYPE_3__ lockname; int spinlock; } ;
struct dlm_ctxt {int node_num; int spinlock; int domain_map; } ;
typedef int nodemap ;


 int BITS_TO_LONGS (int) ;
 int DLM_LOCK_RES_MIGRATING ;
 int O2NM_MAX_NODES ;
 int __dlm_lockres_reserve_ast (struct dlm_lock_resource*) ;
 int clear_bit (int,unsigned long*) ;
 int dlm_do_assert_master (struct dlm_ctxt*,struct dlm_lock_resource*,unsigned long*,int ) ;
 int dlm_is_host_down (int) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int dlm_lockres_release_ast (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int find_next_bit (unsigned long*,int,int) ;
 int memcpy (unsigned long*,int ,int) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dlm_assert_master_worker(struct dlm_work_item *item, void *data)
{
 struct dlm_ctxt *dlm = data;
 int ret = 0;
 struct dlm_lock_resource *res;
 unsigned long nodemap[BITS_TO_LONGS(O2NM_MAX_NODES)];
 int ignore_higher;
 int bit;
 u8 request_from;
 u32 flags;

 dlm = item->dlm;
 res = item->u.am.lockres;
 ignore_higher = item->u.am.ignore_higher;
 request_from = item->u.am.request_from;
 flags = item->u.am.flags;

 spin_lock(&dlm->spinlock);
 memcpy(nodemap, dlm->domain_map, sizeof(nodemap));
 spin_unlock(&dlm->spinlock);

 clear_bit(dlm->node_num, nodemap);
 if (ignore_higher) {



  clear_bit(request_from, nodemap);
  bit = dlm->node_num;
  while (1) {
   bit = find_next_bit(nodemap, O2NM_MAX_NODES,
         bit+1);
          if (bit >= O2NM_MAX_NODES)
    break;
   clear_bit(bit, nodemap);
  }
 }







 spin_lock(&res->spinlock);
 if (res->state & DLM_LOCK_RES_MIGRATING) {
  mlog(0, "Someone asked us to assert mastery, but we're "
       "in the middle of migration.  Skipping assert, "
       "the new master will handle that.\n");
  spin_unlock(&res->spinlock);
  goto put;
 } else
  __dlm_lockres_reserve_ast(res);
 spin_unlock(&res->spinlock);



 mlog(0, "worker about to master %.*s here, this=%u\n",
       res->lockname.len, res->lockname.name, dlm->node_num);
 ret = dlm_do_assert_master(dlm, res, nodemap, flags);
 if (ret < 0) {

  if (!dlm_is_host_down(ret))
   mlog_errno(ret);
 }


 dlm_lockres_release_ast(dlm, res);

put:
 dlm_lockres_put(res);

 mlog(0, "finished with dlm_assert_master_worker\n");
}
