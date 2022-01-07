
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ cmt_state; int cs_lock; } ;


 scalar_t__ COMMIT_BACKGROUND ;
 scalar_t__ COMMIT_REQUIRED ;
 int dbg_cmt (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ubifs_gc_should_commit(struct ubifs_info *c)
{
 int ret = 0;

 spin_lock(&c->cs_lock);
 if (c->cmt_state == COMMIT_BACKGROUND) {
  dbg_cmt("commit required now");
  c->cmt_state = COMMIT_REQUIRED;
 } else
  dbg_cmt("commit not requested");
 if (c->cmt_state == COMMIT_REQUIRED)
  ret = 1;
 spin_unlock(&c->cs_lock);
 return ret;
}
