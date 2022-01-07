
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ cmt_state; int cs_lock; int commit_sem; } ;


 scalar_t__ COMMIT_BROKEN ;
 scalar_t__ COMMIT_RUNNING_BACKGROUND ;
 scalar_t__ COMMIT_RUNNING_REQUIRED ;
 int EINVAL ;
 int do_commit (struct ubifs_info*) ;
 int down_write (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int wait_for_commit (struct ubifs_info*) ;

int ubifs_run_commit(struct ubifs_info *c)
{
 int err = 0;

 spin_lock(&c->cs_lock);
 if (c->cmt_state == COMMIT_BROKEN) {
  err = -EINVAL;
  goto out;
 }

 if (c->cmt_state == COMMIT_RUNNING_BACKGROUND)




  c->cmt_state = COMMIT_RUNNING_REQUIRED;

 if (c->cmt_state == COMMIT_RUNNING_REQUIRED) {
  spin_unlock(&c->cs_lock);
  return wait_for_commit(c);
 }
 spin_unlock(&c->cs_lock);



 down_write(&c->commit_sem);
 spin_lock(&c->cs_lock);




 if (c->cmt_state == COMMIT_BROKEN) {
  err = -EINVAL;
  goto out_cmt_unlock;
 }

 if (c->cmt_state == COMMIT_RUNNING_BACKGROUND)
  c->cmt_state = COMMIT_RUNNING_REQUIRED;

 if (c->cmt_state == COMMIT_RUNNING_REQUIRED) {
  up_write(&c->commit_sem);
  spin_unlock(&c->cs_lock);
  return wait_for_commit(c);
 }
 c->cmt_state = COMMIT_RUNNING_REQUIRED;
 spin_unlock(&c->cs_lock);

 err = do_commit(c);
 return err;

out_cmt_unlock:
 up_write(&c->commit_sem);
out:
 spin_unlock(&c->cs_lock);
 return err;
}
