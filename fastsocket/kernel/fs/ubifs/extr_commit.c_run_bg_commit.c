
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ cmt_state; int cs_lock; int commit_sem; } ;


 scalar_t__ COMMIT_BACKGROUND ;
 scalar_t__ COMMIT_REQUIRED ;
 scalar_t__ COMMIT_RUNNING_BACKGROUND ;
 scalar_t__ COMMIT_RUNNING_REQUIRED ;
 int do_commit (struct ubifs_info*) ;
 int down_write (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int run_bg_commit(struct ubifs_info *c)
{
 spin_lock(&c->cs_lock);




 if (c->cmt_state != COMMIT_BACKGROUND &&
     c->cmt_state != COMMIT_REQUIRED)
  goto out;
 spin_unlock(&c->cs_lock);

 down_write(&c->commit_sem);
 spin_lock(&c->cs_lock);
 if (c->cmt_state == COMMIT_REQUIRED)
  c->cmt_state = COMMIT_RUNNING_REQUIRED;
 else if (c->cmt_state == COMMIT_BACKGROUND)
  c->cmt_state = COMMIT_RUNNING_BACKGROUND;
 else
  goto out_cmt_unlock;
 spin_unlock(&c->cs_lock);

 return do_commit(c);

out_cmt_unlock:
 up_write(&c->commit_sem);
out:
 spin_unlock(&c->cs_lock);
 return 0;
}
