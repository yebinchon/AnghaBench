
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
struct kstat {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_13__ {int error; } ;
struct TYPE_14__ {int numargs; TYPE_5__ h; TYPE_4__* args; } ;
struct TYPE_9__ {int nodeid; int opcode; } ;
struct TYPE_11__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct TYPE_15__ {int mode; } ;
struct fuse_getattr_in {TYPE_7__ attr; int fh; int getattr_flags; } ;
struct fuse_file {int fh; } ;
struct fuse_conn {int minor; } ;
struct fuse_attr_out {TYPE_7__ attr; int fh; int getattr_flags; } ;
struct file {struct fuse_file* private_data; } ;
typedef int outarg ;
typedef int inarg ;
struct TYPE_12__ {int size; struct fuse_getattr_in* value; } ;
struct TYPE_10__ {int size; struct fuse_getattr_in* value; } ;


 int EIO ;
 int FUSE_COMPAT_ATTR_OUT_SIZE ;
 int FUSE_GETATTR ;
 int FUSE_GETATTR_FH ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int S_IFMT ;
 scalar_t__ S_ISREG (int) ;
 int attr_timeout (struct fuse_getattr_in*) ;
 int fuse_change_attributes (struct inode*,TYPE_7__*,int ,int ) ;
 int fuse_fillattr (struct inode*,TYPE_7__*,struct kstat*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int memset (struct fuse_getattr_in*,int ,int) ;

__attribute__((used)) static int fuse_do_getattr(struct inode *inode, struct kstat *stat,
      struct file *file)
{
 int err;
 struct fuse_getattr_in inarg;
 struct fuse_attr_out outarg;
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_req *req;
 u64 attr_version;

 req = fuse_get_req_nopages(fc);
 if (IS_ERR(req))
  return PTR_ERR(req);

 attr_version = fuse_get_attr_version(fc);

 memset(&inarg, 0, sizeof(inarg));
 memset(&outarg, 0, sizeof(outarg));

 if (file && S_ISREG(inode->i_mode)) {
  struct fuse_file *ff = file->private_data;

  inarg.getattr_flags |= FUSE_GETATTR_FH;
  inarg.fh = ff->fh;
 }
 req->in.h.opcode = FUSE_GETATTR;
 req->in.h.nodeid = get_node_id(inode);
 req->in.numargs = 1;
 req->in.args[0].size = sizeof(inarg);
 req->in.args[0].value = &inarg;
 req->out.numargs = 1;
 if (fc->minor < 9)
  req->out.args[0].size = FUSE_COMPAT_ATTR_OUT_SIZE;
 else
  req->out.args[0].size = sizeof(outarg);
 req->out.args[0].value = &outarg;
 fuse_request_send(fc, req);
 err = req->out.h.error;
 fuse_put_request(fc, req);
 if (!err) {
  if ((inode->i_mode ^ outarg.attr.mode) & S_IFMT) {
   make_bad_inode(inode);
   err = -EIO;
  } else {
   fuse_change_attributes(inode, &outarg.attr,
            attr_timeout(&outarg),
            attr_version);
   if (stat)
    fuse_fillattr(inode, &outarg.attr, stat);
  }
 }
 return err;
}
