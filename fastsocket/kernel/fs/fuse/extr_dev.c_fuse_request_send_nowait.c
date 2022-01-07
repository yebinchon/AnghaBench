
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; } ;
struct fuse_conn {int lock; scalar_t__ connected; } ;


 int ENOTCONN ;
 int fuse_request_send_nowait_locked (struct fuse_conn*,struct fuse_req*) ;
 int request_end (struct fuse_conn*,struct fuse_req*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_request_send_nowait(struct fuse_conn *fc, struct fuse_req *req)
{
 spin_lock(&fc->lock);
 if (fc->connected) {
  fuse_request_send_nowait_locked(fc, req);
  spin_unlock(&fc->lock);
 } else {
  req->out.h.error = -ENOTCONN;
  request_end(fc, req);
 }
}
