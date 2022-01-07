
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {scalar_t__ lnum; int offs; int used; int avail; void* buf; int (* sync_callback ) (struct ubifs_info*,scalar_t__,int,int ) ;int lock; scalar_t__ next_ino; int dtype; int jhead; int io_mutex; struct ubifs_info* c; } ;
struct ubifs_info {scalar_t__ leb_cnt; int min_io_size; int leb_size; int min_io_shift; int ubi; scalar_t__ ro_media; } ;
struct ubifs_ch {int node_type; } ;


 int ALIGN (int,int) ;
 int ENOSPC ;
 int EROFS ;
 int cancel_wbuf_timer_nolock (struct ubifs_wbuf*) ;
 int dbg_dump_leb (struct ubifs_info*,scalar_t__) ;
 int dbg_dump_node (struct ubifs_info*,void*) ;
 int dbg_dump_stack () ;
 int dbg_io (char*,int,scalar_t__,int,...) ;
 int dbg_jhead (int ) ;
 int dbg_ntype (int ) ;
 int memcpy (void*,void*,int) ;
 int mutex_is_locked (int *) ;
 int new_wbuf_timer_nolock (struct ubifs_wbuf*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ubifs_info*,scalar_t__,int,int ) ;
 int ubi_leb_write (int ,scalar_t__,void*,int,int,int ) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,int,scalar_t__,int,int) ;

int ubifs_wbuf_write_nolock(struct ubifs_wbuf *wbuf, void *buf, int len)
{
 struct ubifs_info *c = wbuf->c;
 int err, written, n, aligned_len = ALIGN(len, 8), offs;

 dbg_io("%d bytes (%s) to jhead %s wbuf at LEB %d:%d", len,
        dbg_ntype(((struct ubifs_ch *)buf)->node_type),
        dbg_jhead(wbuf->jhead), wbuf->lnum, wbuf->offs + wbuf->used);
 ubifs_assert(len > 0 && wbuf->lnum >= 0 && wbuf->lnum < c->leb_cnt);
 ubifs_assert(wbuf->offs >= 0 && wbuf->offs % c->min_io_size == 0);
 ubifs_assert(!(wbuf->offs & 7) && wbuf->offs <= c->leb_size);
 ubifs_assert(wbuf->avail > 0 && wbuf->avail <= c->min_io_size);
 ubifs_assert(mutex_is_locked(&wbuf->io_mutex));

 if (c->leb_size - wbuf->offs - wbuf->used < aligned_len) {
  err = -ENOSPC;
  goto out;
 }

 cancel_wbuf_timer_nolock(wbuf);

 if (c->ro_media)
  return -EROFS;

 if (aligned_len <= wbuf->avail) {




  memcpy(wbuf->buf + wbuf->used, buf, len);

  if (aligned_len == wbuf->avail) {
   dbg_io("flush jhead %s wbuf to LEB %d:%d",
          dbg_jhead(wbuf->jhead), wbuf->lnum, wbuf->offs);
   err = ubi_leb_write(c->ubi, wbuf->lnum, wbuf->buf,
         wbuf->offs, c->min_io_size,
         wbuf->dtype);
   if (err)
    goto out;

   spin_lock(&wbuf->lock);
   wbuf->offs += c->min_io_size;
   wbuf->avail = c->min_io_size;
   wbuf->used = 0;
   wbuf->next_ino = 0;
   spin_unlock(&wbuf->lock);
  } else {
   spin_lock(&wbuf->lock);
   wbuf->avail -= aligned_len;
   wbuf->used += aligned_len;
   spin_unlock(&wbuf->lock);
  }

  goto exit;
 }






 dbg_io("flush jhead %s wbuf to LEB %d:%d",
        dbg_jhead(wbuf->jhead), wbuf->lnum, wbuf->offs);
 memcpy(wbuf->buf + wbuf->used, buf, wbuf->avail);
 err = ubi_leb_write(c->ubi, wbuf->lnum, wbuf->buf, wbuf->offs,
       c->min_io_size, wbuf->dtype);
 if (err)
  goto out;

 offs = wbuf->offs + c->min_io_size;
 len -= wbuf->avail;
 aligned_len -= wbuf->avail;
 written = wbuf->avail;







 n = aligned_len >> c->min_io_shift;
 if (n) {
  n <<= c->min_io_shift;
  dbg_io("write %d bytes to LEB %d:%d", n, wbuf->lnum, offs);
  err = ubi_leb_write(c->ubi, wbuf->lnum, buf + written, offs, n,
        wbuf->dtype);
  if (err)
   goto out;
  offs += n;
  aligned_len -= n;
  len -= n;
  written += n;
 }

 spin_lock(&wbuf->lock);
 if (aligned_len)





  memcpy(wbuf->buf, buf + written, len);

 wbuf->offs = offs;
 wbuf->used = aligned_len;
 wbuf->avail = c->min_io_size - aligned_len;
 wbuf->next_ino = 0;
 spin_unlock(&wbuf->lock);

exit:
 if (wbuf->sync_callback) {
  int free = c->leb_size - wbuf->offs - wbuf->used;

  err = wbuf->sync_callback(c, wbuf->lnum, free, 0);
  if (err)
   goto out;
 }

 if (wbuf->used)
  new_wbuf_timer_nolock(wbuf);

 return 0;

out:
 ubifs_err("cannot write %d bytes to LEB %d:%d, error %d",
    len, wbuf->lnum, wbuf->offs, err);
 dbg_dump_node(c, buf);
 dbg_dump_stack();
 dbg_dump_leb(c, wbuf->lnum);
 return err;
}
