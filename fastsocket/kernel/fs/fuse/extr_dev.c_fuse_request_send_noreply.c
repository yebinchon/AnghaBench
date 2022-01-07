
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {scalar_t__ isreply; } ;
struct fuse_conn {int dummy; } ;


 int fuse_request_send_nowait (struct fuse_conn*,struct fuse_req*) ;

void fuse_request_send_noreply(struct fuse_conn *fc, struct fuse_req *req)
{
 req->isreply = 0;
 fuse_request_send_nowait(fc, req);
}
