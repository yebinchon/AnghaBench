
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_11__ {int error; } ;
struct TYPE_12__ {TYPE_5__ h; } ;
struct TYPE_7__ {int nodeid; int opcode; } ;
struct TYPE_9__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_10__ {int name; scalar_t__ len; } ;
struct dentry {int d_inode; TYPE_4__ d_name; } ;
struct TYPE_8__ {int value; scalar_t__ size; } ;


 int EINTR ;
 int FUSE_RMDIR ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int clear_nlink (int ) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_invalidate_entry (struct dentry*) ;
 int fuse_invalidate_entry_cache (struct dentry*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;

__attribute__((used)) static int fuse_rmdir(struct inode *dir, struct dentry *entry)
{
 int err;
 struct fuse_conn *fc = get_fuse_conn(dir);
 struct fuse_req *req = fuse_get_req_nopages(fc);
 if (IS_ERR(req))
  return PTR_ERR(req);

 req->in.h.opcode = FUSE_RMDIR;
 req->in.h.nodeid = get_node_id(dir);
 req->in.numargs = 1;
 req->in.args[0].size = entry->d_name.len + 1;
 req->in.args[0].value = entry->d_name.name;
 fuse_request_send(fc, req);
 err = req->out.h.error;
 fuse_put_request(fc, req);
 if (!err) {
  clear_nlink(entry->d_inode);
  fuse_invalidate_attr(dir);
  fuse_invalidate_entry_cache(entry);
 } else if (err == -EINTR)
  fuse_invalidate_entry(entry);
 return err;
}
