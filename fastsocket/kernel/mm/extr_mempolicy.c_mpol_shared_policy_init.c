
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_end; } ;
struct shared_policy {int lock; int root; } ;
struct TYPE_2__ {int user_nodemask; } ;
struct mempolicy {TYPE_1__ w; int flags; int mode; } ;


 scalar_t__ IS_ERR (struct mempolicy*) ;
 int NODEMASK_SCRATCH (int ) ;
 int NODEMASK_SCRATCH_FREE (int ) ;
 int RB_ROOT ;
 int TASK_SIZE ;
 int current ;
 int memset (struct vm_area_struct*,int ,int) ;
 struct mempolicy* mpol_new (int ,int ,int *) ;
 int mpol_put (struct mempolicy*) ;
 int mpol_set_nodemask (struct mempolicy*,int *,int ) ;
 int mpol_set_shared_policy (struct shared_policy*,struct vm_area_struct*,struct mempolicy*) ;
 int scratch ;
 int spin_lock_init (int *) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;

void mpol_shared_policy_init(struct shared_policy *sp, struct mempolicy *mpol)
{
 int ret;

 sp->root = RB_ROOT;
 spin_lock_init(&sp->lock);

 if (mpol) {
  struct vm_area_struct pvma;
  struct mempolicy *new;
  NODEMASK_SCRATCH(scratch);

  if (!scratch)
   return;

  new = mpol_new(mpol->mode, mpol->flags, &mpol->w.user_nodemask);
  if (IS_ERR(new)) {
   mpol_put(mpol);
   NODEMASK_SCRATCH_FREE(scratch);
   return;
  }

  task_lock(current);
  ret = mpol_set_nodemask(new, &mpol->w.user_nodemask, scratch);
  task_unlock(current);
  mpol_put(mpol);
  if (ret) {
   NODEMASK_SCRATCH_FREE(scratch);
   mpol_put(new);
   return;
  }


  memset(&pvma, 0, sizeof(struct vm_area_struct));
  pvma.vm_end = TASK_SIZE;
  mpol_set_shared_policy(sp, &pvma, new);
  mpol_put(new);
  NODEMASK_SCRATCH_FREE(scratch);
 }
}
