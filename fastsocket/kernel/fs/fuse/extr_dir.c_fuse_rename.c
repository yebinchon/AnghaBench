
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
struct TYPE_7__ {void* nodeid; int opcode; } ;
struct TYPE_9__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct fuse_rename_in {void* newdir; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_10__ {int len; struct fuse_rename_in* name; } ;
struct dentry {struct inode* d_inode; TYPE_4__ d_name; } ;
typedef int inarg ;
struct TYPE_8__ {int size; struct fuse_rename_in* value; } ;


 int EINTR ;
 int FUSE_RENAME ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_invalidate_entry (struct dentry*) ;
 int fuse_invalidate_entry_cache (struct dentry*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 void* get_node_id (struct inode*) ;
 int memset (struct fuse_rename_in*,int ,int) ;

__attribute__((used)) static int fuse_rename(struct inode *olddir, struct dentry *oldent,
         struct inode *newdir, struct dentry *newent)
{
 int err;
 struct fuse_rename_in inarg;
 struct fuse_conn *fc = get_fuse_conn(olddir);
 struct fuse_req *req = fuse_get_req_nopages(fc);
 if (IS_ERR(req))
  return PTR_ERR(req);

 memset(&inarg, 0, sizeof(inarg));
 inarg.newdir = get_node_id(newdir);
 req->in.h.opcode = FUSE_RENAME;
 req->in.h.nodeid = get_node_id(olddir);
 req->in.numargs = 3;
 req->in.args[0].size = sizeof(inarg);
 req->in.args[0].value = &inarg;
 req->in.args[1].size = oldent->d_name.len + 1;
 req->in.args[1].value = oldent->d_name.name;
 req->in.args[2].size = newent->d_name.len + 1;
 req->in.args[2].value = newent->d_name.name;
 fuse_request_send(fc, req);
 err = req->out.h.error;
 fuse_put_request(fc, req);
 if (!err) {

  fuse_invalidate_attr(oldent->d_inode);

  fuse_invalidate_attr(olddir);
  if (olddir != newdir)
   fuse_invalidate_attr(newdir);


  if (newent->d_inode) {
   fuse_invalidate_attr(newent->d_inode);
   fuse_invalidate_entry_cache(newent);
  }
 } else if (err == -EINTR) {





  fuse_invalidate_entry(oldent);
  if (newent->d_inode)
   fuse_invalidate_entry(newent);
 }

 return err;
}
