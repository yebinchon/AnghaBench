
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int io_mutex; int jhead; } ;


 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ubifs_wbuf_sync_nolock (struct ubifs_wbuf*) ;

__attribute__((used)) static inline int ubifs_wbuf_sync(struct ubifs_wbuf *wbuf)
{
 int err;

 mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);
 err = ubifs_wbuf_sync_nolock(wbuf);
 mutex_unlock(&wbuf->io_mutex);
 return err;
}
