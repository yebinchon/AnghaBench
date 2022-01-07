
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int end; struct fuse_io_priv* io; } ;
struct fuse_io_priv {size_t size; int lock; int reqs; } ;
struct fuse_conn {int dummy; } ;


 int __fuse_get_request (struct fuse_req*) ;
 int fuse_aio_complete_req ;
 int fuse_request_send_background (struct fuse_conn*,struct fuse_req*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static size_t fuse_async_req_send(struct fuse_conn *fc, struct fuse_req *req,
  size_t num_bytes, struct fuse_io_priv *io)
{
 spin_lock(&io->lock);
 io->size += num_bytes;
 io->reqs++;
 spin_unlock(&io->lock);

 req->io = io;
 req->end = fuse_aio_complete_req;

 __fuse_get_request(req);
 fuse_request_send_background(fc, req);

 return num_bytes;
}
