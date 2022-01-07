
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int lock; int next_ino; int * inodes; scalar_t__ used; int buf; } ;
typedef int ino_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ubifs_wbuf_add_ino_nolock(struct ubifs_wbuf *wbuf, ino_t inum)
{
 if (!wbuf->buf)

  return;

 spin_lock(&wbuf->lock);
 if (wbuf->used)
  wbuf->inodes[wbuf->next_ino++] = inum;
 spin_unlock(&wbuf->lock);
}
