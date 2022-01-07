
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct kstatfs {int f_type; } ;
struct fuse_statfs_out {int st; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {int numargs; TYPE_4__ h; TYPE_3__* args; } ;
struct TYPE_6__ {int nodeid; int opcode; } ;
struct TYPE_7__ {TYPE_1__ h; scalar_t__ numargs; } ;
struct fuse_req {TYPE_5__ out; TYPE_2__ in; } ;
struct fuse_conn {int minor; } ;
struct dentry {int d_inode; struct super_block* d_sb; } ;
typedef int outarg ;
struct TYPE_8__ {int size; struct fuse_statfs_out* value; } ;


 int FUSE_COMPAT_STATFS_SIZE ;
 int FUSE_STATFS ;
 int FUSE_SUPER_MAGIC ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int convert_fuse_statfs (struct kstatfs*,int *) ;
 int fuse_allow_current_process (struct fuse_conn*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int get_node_id (int ) ;
 int memset (struct fuse_statfs_out*,int ,int) ;

__attribute__((used)) static int fuse_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct fuse_conn *fc = get_fuse_conn_super(sb);
 struct fuse_req *req;
 struct fuse_statfs_out outarg;
 int err;

 if (!fuse_allow_current_process(fc)) {
  buf->f_type = FUSE_SUPER_MAGIC;
  return 0;
 }

 req = fuse_get_req_nopages(fc);
 if (IS_ERR(req))
  return PTR_ERR(req);

 memset(&outarg, 0, sizeof(outarg));
 req->in.numargs = 0;
 req->in.h.opcode = FUSE_STATFS;
 req->in.h.nodeid = get_node_id(dentry->d_inode);
 req->out.numargs = 1;
 req->out.args[0].size =
  fc->minor < 4 ? FUSE_COMPAT_STATFS_SIZE : sizeof(outarg);
 req->out.args[0].value = &outarg;
 fuse_request_send(fc, req);
 err = req->out.h.error;
 if (!err)
  convert_fuse_statfs(buf, &outarg.st);
 fuse_put_request(fc, req);
 return err;
}
