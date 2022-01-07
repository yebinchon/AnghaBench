
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_wbuf {int offs; int used; int lnum; int io_mutex; int dtype; int jhead; } ;
struct ubifs_info {int leb_size; scalar_t__ ro_media; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;


 int BASEHD ;
 int EAGAIN ;
 int ENOSPC ;
 int EROFS ;
 int dbg_jhead (int) ;
 int dbg_jnl (char*,...) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ubifs_add_bud_to_log (struct ubifs_info*,int,int,int) ;
 int ubifs_assert (int) ;
 int ubifs_find_free_space (struct ubifs_info*,int,int*,int) ;
 int ubifs_garbage_collect (struct ubifs_info*,int ) ;
 int ubifs_return_leb (struct ubifs_info*,int) ;
 int ubifs_wbuf_seek_nolock (struct ubifs_wbuf*,int,int,int ) ;

__attribute__((used)) static int reserve_space(struct ubifs_info *c, int jhead, int len)
{
 int err = 0, err1, retries = 0, avail, lnum, offs, squeeze;
 struct ubifs_wbuf *wbuf = &c->jheads[jhead].wbuf;






 squeeze = (jhead == BASEHD);
again:
 mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);

 if (c->ro_media) {
  err = -EROFS;
  goto out_unlock;
 }

 avail = c->leb_size - wbuf->offs - wbuf->used;
 if (wbuf->lnum != -1 && avail >= len)
  return 0;





 lnum = ubifs_find_free_space(c, len, &offs, squeeze);
 if (lnum >= 0) {

  err = ubifs_add_bud_to_log(c, jhead, lnum, offs);
  if (err)
   goto out_return;

  goto out;
 }

 err = lnum;
 if (err != -ENOSPC)
  goto out_unlock;






 dbg_jnl("no free space in jhead %s, run GC", dbg_jhead(jhead));
 mutex_unlock(&wbuf->io_mutex);

 lnum = ubifs_garbage_collect(c, 0);
 if (lnum < 0) {
  err = lnum;
  if (err != -ENOSPC)
   return err;







  dbg_jnl("GC couldn't make a free LEB for jhead %s",
   dbg_jhead(jhead));
  if (retries++ < 2) {
   dbg_jnl("retry (%d)", retries);
   goto again;
  }

  dbg_jnl("return -ENOSPC");
  return err;
 }

 mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);
 dbg_jnl("got LEB %d for jhead %s", lnum, dbg_jhead(jhead));
 avail = c->leb_size - wbuf->offs - wbuf->used;

 if (wbuf->lnum != -1 && avail >= len) {





  dbg_jnl("return LEB %d back, already have LEB %d:%d",
   lnum, wbuf->lnum, wbuf->offs + wbuf->used);
  err = ubifs_return_leb(c, lnum);
  if (err)
   goto out_unlock;
  return 0;
 }

 err = ubifs_add_bud_to_log(c, jhead, lnum, 0);
 if (err)
  goto out_return;
 offs = 0;

out:
 err = ubifs_wbuf_seek_nolock(wbuf, lnum, offs, wbuf->dtype);
 if (err)
  goto out_unlock;

 return 0;

out_unlock:
 mutex_unlock(&wbuf->io_mutex);
 return err;

out_return:

 ubifs_assert(err < 0);
 err1 = ubifs_return_leb(c, lnum);
 if (err1 && err == -EAGAIN)





  err = err1;
 mutex_unlock(&wbuf->io_mutex);
 return err;
}
