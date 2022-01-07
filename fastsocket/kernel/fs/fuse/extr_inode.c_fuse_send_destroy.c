
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opcode; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {int force; TYPE_2__ in; } ;
struct fuse_conn {struct fuse_req* destroy_req; scalar_t__ conn_init; } ;


 int FUSE_DESTROY ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;

__attribute__((used)) static void fuse_send_destroy(struct fuse_conn *fc)
{
 struct fuse_req *req = fc->destroy_req;
 if (req && fc->conn_init) {
  fc->destroy_req = ((void*)0);
  req->in.h.opcode = FUSE_DESTROY;
  req->force = 1;
  fuse_request_send(fc, req);
  fuse_put_request(fc, req);
 }
}
