
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int lnum; int offs; int buf; int lock; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; int ubi; } ;


 int dbg_io (char*,int,int,int) ;
 int memcpy (void*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_read (int ,int,void*,int,int) ;
 int ubifs_assert (int) ;

__attribute__((used)) static int read_wbuf(struct ubifs_wbuf *wbuf, void *buf, int len, int lnum,
       int offs)
{
 const struct ubifs_info *c = wbuf->c;
 int rlen, overlap;

 dbg_io("LEB %d:%d, length %d", lnum, offs, len);
 ubifs_assert(wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
 ubifs_assert(!(offs & 7) && offs < c->leb_size);
 ubifs_assert(offs + len <= c->leb_size);

 spin_lock(&wbuf->lock);
 overlap = (lnum == wbuf->lnum && offs + len > wbuf->offs);
 if (!overlap) {

  spin_unlock(&wbuf->lock);
  return ubi_read(c->ubi, lnum, buf, offs, len);
 }


 rlen = wbuf->offs - offs;
 if (rlen < 0)
  rlen = 0;


 memcpy(buf + rlen, wbuf->buf + offs + rlen - wbuf->offs, len - rlen);
 spin_unlock(&wbuf->lock);

 if (rlen > 0)

  return ubi_read(c->ubi, lnum, buf, offs, rlen);

 return 0;
}
