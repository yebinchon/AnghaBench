
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
struct TYPE_8__ {int error; } ;
struct TYPE_10__ {int argvar; int numargs; TYPE_4__* args; TYPE_3__ h; } ;
struct TYPE_6__ {int nodeid; int opcode; } ;
struct TYPE_7__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_2__ in; } ;
struct fuse_conn {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_9__ {size_t size; char* value; } ;


 int ENOMEM ;
 char* ERR_CAST (struct fuse_req*) ;
 char* ERR_PTR (int) ;
 int FUSE_READLINK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 size_t PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;

__attribute__((used)) static char *read_link(struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_req *req = fuse_get_req_nopages(fc);
 char *link;

 if (IS_ERR(req))
  return ERR_CAST(req);

 link = (char *) __get_free_page(GFP_KERNEL);
 if (!link) {
  link = ERR_PTR(-ENOMEM);
  goto out;
 }
 req->in.h.opcode = FUSE_READLINK;
 req->in.h.nodeid = get_node_id(inode);
 req->out.argvar = 1;
 req->out.numargs = 1;
 req->out.args[0].size = PAGE_SIZE - 1;
 req->out.args[0].value = link;
 fuse_request_send(fc, req);
 if (req->out.h.error) {
  free_page((unsigned long) link);
  link = ERR_PTR(req->out.h.error);
 } else
  link[req->out.args[0].size] = '\0';
 out:
 fuse_put_request(fc, req);
 fuse_invalidate_attr(inode);
 return link;
}
