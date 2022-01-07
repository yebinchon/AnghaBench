
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int deref_node; struct dlm_lock_resource* deref_res; } ;
struct TYPE_5__ {TYPE_1__ dl; } ;
struct dlm_work_item {TYPE_2__ u; struct dlm_ctxt* dlm; } ;
struct TYPE_6__ {int name; int len; } ;
struct dlm_lock_resource {int state; TYPE_3__ lockname; int spinlock; int refmap; } ;
struct dlm_ctxt {int name; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_RES_DROPPING_REF ;
 int DLM_LOCK_RES_SETREF_INPROG ;
 int ML_ERROR ;
 int __dlm_wait_on_lockres_flags (struct dlm_lock_resource*,int ) ;
 int dlm_lockres_calc_usage (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_clear_refmap_bit (int,struct dlm_lock_resource*) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int mlog (int ,char*,int ,int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void dlm_deref_lockres_worker(struct dlm_work_item *item, void *data)
{
 struct dlm_ctxt *dlm;
 struct dlm_lock_resource *res;
 u8 node;
 u8 cleared = 0;

 dlm = item->dlm;
 res = item->u.dl.deref_res;
 node = item->u.dl.deref_node;

 spin_lock(&res->spinlock);
 BUG_ON(res->state & DLM_LOCK_RES_DROPPING_REF);
 if (test_bit(node, res->refmap)) {
  __dlm_wait_on_lockres_flags(res, DLM_LOCK_RES_SETREF_INPROG);
  dlm_lockres_clear_refmap_bit(node, res);
  cleared = 1;
 }
 spin_unlock(&res->spinlock);

 if (cleared) {
  mlog(0, "%s:%.*s node %u ref dropped in dispatch\n",
       dlm->name, res->lockname.len, res->lockname.name, node);
  dlm_lockres_calc_usage(dlm, res);
 } else {
  mlog(ML_ERROR, "%s:%.*s: node %u trying to drop ref "
       "but it is already dropped!\n", dlm->name,
       res->lockname.len, res->lockname.name, node);
  dlm_print_one_lock_resource(res);
 }

 dlm_lockres_put(res);
}
