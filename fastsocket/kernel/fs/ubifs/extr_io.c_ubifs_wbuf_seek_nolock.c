
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int lnum; scalar_t__ used; int offs; int avail; int dtype; int lock; int jhead; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; int min_io_size; } ;


 int dbg_io (char*,int,int,int ) ;
 int dbg_jhead (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_assert (int) ;
 int ubifs_wbuf_sync_nolock (struct ubifs_wbuf*) ;

int ubifs_wbuf_seek_nolock(struct ubifs_wbuf *wbuf, int lnum, int offs,
      int dtype)
{
 const struct ubifs_info *c = wbuf->c;

 dbg_io("LEB %d:%d, jhead %s", lnum, offs, dbg_jhead(wbuf->jhead));
 ubifs_assert(lnum >= 0 && lnum < c->leb_cnt);
 ubifs_assert(offs >= 0 && offs <= c->leb_size);
 ubifs_assert(offs % c->min_io_size == 0 && !(offs & 7));
 ubifs_assert(lnum != wbuf->lnum);

 if (wbuf->used > 0) {
  int err = ubifs_wbuf_sync_nolock(wbuf);

  if (err)
   return err;
 }

 spin_lock(&wbuf->lock);
 wbuf->lnum = lnum;
 wbuf->offs = offs;
 wbuf->avail = c->min_io_size;
 wbuf->used = 0;
 spin_unlock(&wbuf->lock);
 wbuf->dtype = dtype;

 return 0;
}
