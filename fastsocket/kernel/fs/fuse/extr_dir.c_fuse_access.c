
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {TYPE_4__ h; } ;
struct TYPE_6__ {int nodeid; int opcode; } ;
struct TYPE_8__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_3__ in; } ;
struct fuse_conn {int no_access; } ;
struct fuse_access_in {int mask; } ;
typedef int inarg ;
struct TYPE_7__ {int size; struct fuse_access_in* value; } ;


 int ENOSYS ;
 int FUSE_ACCESS ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int PTR_ERR (struct fuse_req*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int memset (struct fuse_access_in*,int ,int) ;

__attribute__((used)) static int fuse_access(struct inode *inode, int mask)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_req *req;
 struct fuse_access_in inarg;
 int err;

 if (fc->no_access)
  return 0;

 req = fuse_get_req_nopages(fc);
 if (IS_ERR(req))
  return PTR_ERR(req);

 memset(&inarg, 0, sizeof(inarg));
 inarg.mask = mask & (MAY_READ | MAY_WRITE | MAY_EXEC);
 req->in.h.opcode = FUSE_ACCESS;
 req->in.h.nodeid = get_node_id(inode);
 req->in.numargs = 1;
 req->in.args[0].size = sizeof(inarg);
 req->in.args[0].value = &inarg;
 fuse_request_send(fc, req);
 err = req->out.h.error;
 fuse_put_request(fc, req);
 if (err == -ENOSYS) {
  fc->no_access = 1;
  err = 0;
 }
 return err;
}
