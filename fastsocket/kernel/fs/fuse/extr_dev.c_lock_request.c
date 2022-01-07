
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int locked; scalar_t__ aborted; } ;
struct fuse_conn {int lock; } ;


 int ENOENT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int lock_request(struct fuse_conn *fc, struct fuse_req *req)
{
 int err = 0;
 if (req) {
  spin_lock(&fc->lock);
  if (req->aborted)
   err = -ENOENT;
  else
   req->locked = 1;
  spin_unlock(&fc->lock);
 }
 return err;
}
