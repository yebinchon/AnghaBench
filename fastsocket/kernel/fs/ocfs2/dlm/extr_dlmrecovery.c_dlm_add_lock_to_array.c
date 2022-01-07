
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlm_migratable_lockres {int num_locks; int lvb; struct dlm_migratable_lock* ml; } ;
struct dlm_migratable_lock {scalar_t__ type; int list; int node; int flags; int highest_blocked; int convert_type; int cookie; } ;
struct TYPE_4__ {scalar_t__ type; int node; int highest_blocked; int convert_type; int cookie; } ;
struct dlm_lock {TYPE_2__ ml; TYPE_1__* lksb; int lockres; } ;
struct TYPE_3__ {int lvb; int flags; } ;


 int BUG () ;
 int DLM_LVB_LEN ;
 int DLM_MAX_MIGRATABLE_LOCKS ;
 scalar_t__ LKM_EXMODE ;
 scalar_t__ LKM_PRMODE ;
 int ML_ERROR ;
 int dlm_lvb_is_empty (int ) ;
 int dlm_print_one_lock_resource (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int mlog (int ,char*) ;

__attribute__((used)) static int dlm_add_lock_to_array(struct dlm_lock *lock,
     struct dlm_migratable_lockres *mres, int queue)
{
 struct dlm_migratable_lock *ml;
 int lock_num = mres->num_locks;

 ml = &(mres->ml[lock_num]);
 ml->cookie = lock->ml.cookie;
 ml->type = lock->ml.type;
 ml->convert_type = lock->ml.convert_type;
 ml->highest_blocked = lock->ml.highest_blocked;
 ml->list = queue;
 if (lock->lksb) {
  ml->flags = lock->lksb->flags;

  if (ml->type == LKM_EXMODE ||
      ml->type == LKM_PRMODE) {


   if (!dlm_lvb_is_empty(mres->lvb) &&
       (ml->type == LKM_EXMODE ||
        memcmp(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN))) {
    mlog(ML_ERROR, "mismatched lvbs!\n");
    dlm_print_one_lock_resource(lock->lockres);
    BUG();
   }
   memcpy(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN);
  }
 }
 ml->node = lock->ml.node;
 mres->num_locks++;

 if (mres->num_locks == DLM_MAX_MIGRATABLE_LOCKS)
  return 1;
 return 0;
}
