
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_wbuf {int io_mutex; int jhead; } ;
struct ubifs_info {int jhead_cnt; TYPE_1__* jheads; } ;
struct inode {int i_ino; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;


 int GCHD ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_wbuf_sync_nolock (struct ubifs_wbuf*) ;
 scalar_t__ wbuf_has_ino (struct ubifs_wbuf*,int ) ;

int ubifs_sync_wbufs_by_inode(struct ubifs_info *c, struct inode *inode)
{
 int i, err = 0;

 for (i = 0; i < c->jhead_cnt; i++) {
  struct ubifs_wbuf *wbuf = &c->jheads[i].wbuf;

  if (i == GCHD)






   continue;

  if (!wbuf_has_ino(wbuf, inode->i_ino))
   continue;

  mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);
  if (wbuf_has_ino(wbuf, inode->i_ino))
   err = ubifs_wbuf_sync_nolock(wbuf);
  mutex_unlock(&wbuf->io_mutex);

  if (err) {
   ubifs_ro_mode(c, err);
   return err;
  }
 }
 return 0;
}
