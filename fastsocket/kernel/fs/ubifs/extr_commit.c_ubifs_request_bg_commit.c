
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ cmt_state; int cs_lock; } ;


 scalar_t__ COMMIT_BACKGROUND ;
 scalar_t__ COMMIT_RESTING ;
 int dbg_cmt (char*,int ,int ) ;
 int dbg_cstate (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_wake_up_bgt (struct ubifs_info*) ;

void ubifs_request_bg_commit(struct ubifs_info *c)
{
 spin_lock(&c->cs_lock);
 if (c->cmt_state == COMMIT_RESTING) {
  dbg_cmt("old: %s, new: %s", dbg_cstate(c->cmt_state),
   dbg_cstate(COMMIT_BACKGROUND));
  c->cmt_state = COMMIT_BACKGROUND;
  spin_unlock(&c->cs_lock);
  ubifs_wake_up_bgt(c);
 } else
  spin_unlock(&c->cs_lock);
}
