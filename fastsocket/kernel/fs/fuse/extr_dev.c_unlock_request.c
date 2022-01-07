
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int waitq; scalar_t__ aborted; scalar_t__ locked; } ;
struct fuse_conn {int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void unlock_request(struct fuse_conn *fc, struct fuse_req *req)
{
 if (req) {
  spin_lock(&fc->lock);
  req->locked = 0;
  if (req->aborted)
   wake_up(&req->waitq);
  spin_unlock(&fc->lock);
 }
}
