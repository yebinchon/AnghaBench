
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int dummy; } ;
struct qstr {scalar_t__ len; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; } ;
struct TYPE_6__ {int mode; } ;
struct fuse_entry_out {int nodeid; TYPE_3__ attr; int generation; } ;
struct fuse_conn {int dummy; } ;


 int EIO ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 scalar_t__ FUSE_NAME_MAX ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int entry_attr_timeout (struct fuse_entry_out*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 struct inode* fuse_iget (struct super_block*,int ,int ,TYPE_3__*,int ,int ) ;
 int fuse_lookup_init (struct fuse_conn*,struct fuse_req*,int ,struct qstr*,struct fuse_entry_out*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 int fuse_send_forget (struct fuse_conn*,struct fuse_req*,int ,int) ;
 int fuse_valid_type (int ) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;

int fuse_lookup_name(struct super_block *sb, u64 nodeid, struct qstr *name,
       struct fuse_entry_out *outarg, struct inode **inode)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);
 struct fuse_req *req;
 struct fuse_req *forget_req;
 u64 attr_version;
 int err;

 *inode = ((void*)0);
 err = -ENAMETOOLONG;
 if (name->len > FUSE_NAME_MAX)
  goto out;

 req = fuse_get_req_nopages(fc);
 err = PTR_ERR(req);
 if (IS_ERR(req))
  goto out;

 forget_req = fuse_get_req_nopages(fc);
 err = PTR_ERR(forget_req);
 if (IS_ERR(forget_req)) {
  fuse_put_request(fc, req);
  goto out;
 }

 attr_version = fuse_get_attr_version(fc);

 fuse_lookup_init(fc, req, nodeid, name, outarg);
 fuse_request_send(fc, req);
 err = req->out.h.error;
 fuse_put_request(fc, req);

 if (err || !outarg->nodeid)
  goto out_put_forget;

 err = -EIO;
 if (!outarg->nodeid)
  goto out_put_forget;
 if (!fuse_valid_type(outarg->attr.mode))
  goto out_put_forget;

 *inode = fuse_iget(sb, outarg->nodeid, outarg->generation,
      &outarg->attr, entry_attr_timeout(outarg),
      attr_version);
 err = -ENOMEM;
 if (!*inode) {
  fuse_send_forget(fc, forget_req, outarg->nodeid, 1);
  goto out;
 }
 err = 0;

 out_put_forget:
 fuse_put_request(fc, forget_req);
 out:
 return err;
}
