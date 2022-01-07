
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int entry; int reserved_req_waitq; int blocked_waitq; int waitq; int fasync; int lock; scalar_t__ blocked; scalar_t__ connected; } ;


 int POLL_IN ;
 int SIGIO ;
 int fuse_bdi_destroy (struct fuse_conn*) ;
 int fuse_ctl_remove_conn (struct fuse_conn*) ;
 int fuse_mutex ;
 int kill_fasync (int *,int ,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

void fuse_conn_kill(struct fuse_conn *fc)
{
 spin_lock(&fc->lock);
 fc->connected = 0;
 fc->blocked = 0;
 spin_unlock(&fc->lock);

 kill_fasync(&fc->fasync, SIGIO, POLL_IN);
 wake_up_all(&fc->waitq);
 wake_up_all(&fc->blocked_waitq);
 wake_up_all(&fc->reserved_req_waitq);
 mutex_lock(&fuse_mutex);
 list_del(&fc->entry);
 fuse_ctl_remove_conn(fc);
 mutex_unlock(&fuse_mutex);
 fuse_bdi_destroy(fc);
}
