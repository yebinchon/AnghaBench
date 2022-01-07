
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int commit_sem; int space_lock; } ;


 int EAGAIN ;
 int ENOSPC ;
 int dbg_check_lprops (struct ubifs_info*) ;
 int dbg_dump_budg (struct ubifs_info*) ;
 int dbg_dump_lprops (struct ubifs_info*) ;
 int dbg_dump_stack () ;
 int dbg_jnl (char*,...) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int reserve_space (struct ubifs_info*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_err (char*,...) ;
 int ubifs_run_commit (struct ubifs_info*) ;
 int ubifs_warn (char*,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int make_reservation(struct ubifs_info *c, int jhead, int len)
{
 int err, cmt_retries = 0, nospc_retries = 0;

again:
 down_read(&c->commit_sem);
 err = reserve_space(c, jhead, len);
 if (!err)
  return 0;
 up_read(&c->commit_sem);

 if (err == -ENOSPC) {






  if (nospc_retries++ < 2) {
   dbg_jnl("no space, retry");
   err = -EAGAIN;
  }







 }

 if (err != -EAGAIN)
  goto out;





 if (cmt_retries > 128) {




  ubifs_err("stuck in space allocation");
  err = -ENOSPC;
  goto out;
 } else if (cmt_retries > 32)
  ubifs_warn("too many space allocation re-tries (%d)",
      cmt_retries);

 dbg_jnl("-EAGAIN, commit and retry (retried %d times)",
  cmt_retries);
 cmt_retries += 1;

 err = ubifs_run_commit(c);
 if (err)
  return err;
 goto again;

out:
 ubifs_err("cannot reserve %d bytes in jhead %d, error %d",
    len, jhead, err);
 if (err == -ENOSPC) {

  down_write(&c->commit_sem);
  spin_lock(&c->space_lock);
  dbg_dump_stack();
  dbg_dump_budg(c);
  spin_unlock(&c->space_lock);
  dbg_dump_lprops(c);
  cmt_retries = dbg_check_lprops(c);
  up_write(&c->commit_sem);
 }
 return err;
}
