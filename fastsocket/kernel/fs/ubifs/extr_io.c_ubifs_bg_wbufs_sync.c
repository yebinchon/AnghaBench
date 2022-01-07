
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_wbuf {int io_mutex; int jhead; int need_sync; } ;
struct ubifs_info {int jhead_cnt; TYPE_1__* jheads; scalar_t__ ro_media; scalar_t__ need_wbuf_sync; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;


 int EROFS ;
 int cancel_wbuf_timer_nolock (struct ubifs_wbuf*) ;
 int cond_resched () ;
 int dbg_io (char*) ;
 scalar_t__ mutex_is_locked (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ubifs_err (char*,int) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_wbuf_sync_nolock (struct ubifs_wbuf*) ;

int ubifs_bg_wbufs_sync(struct ubifs_info *c)
{
 int err, i;

 if (!c->need_wbuf_sync)
  return 0;
 c->need_wbuf_sync = 0;

 if (c->ro_media) {
  err = -EROFS;
  goto out_timers;
 }

 dbg_io("synchronize");
 for (i = 0; i < c->jhead_cnt; i++) {
  struct ubifs_wbuf *wbuf = &c->jheads[i].wbuf;

  cond_resched();





  if (mutex_is_locked(&wbuf->io_mutex))
   continue;

  mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);
  if (!wbuf->need_sync) {
   mutex_unlock(&wbuf->io_mutex);
   continue;
  }

  err = ubifs_wbuf_sync_nolock(wbuf);
  mutex_unlock(&wbuf->io_mutex);
  if (err) {
   ubifs_err("cannot sync write-buffer, error %d", err);
   ubifs_ro_mode(c, err);
   goto out_timers;
  }
 }

 return 0;

out_timers:

 for (i = 0; i < c->jhead_cnt; i++) {
  struct ubifs_wbuf *wbuf = &c->jheads[i].wbuf;

  mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);
  cancel_wbuf_timer_nolock(wbuf);
  mutex_unlock(&wbuf->io_mutex);
 }
 return err;
}
