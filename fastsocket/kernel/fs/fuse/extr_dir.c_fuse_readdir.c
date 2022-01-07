
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


typedef int u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_11__ {int error; } ;
struct TYPE_12__ {int argpages; TYPE_5__ h; TYPE_4__* args; } ;
struct fuse_req {int num_pages; TYPE_6__ out; TYPE_3__* page_descs; struct page** pages; } ;
struct fuse_conn {scalar_t__ do_readdirplus; } ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
typedef int filldir_t ;
struct TYPE_10__ {size_t size; } ;
struct TYPE_9__ {int length; } ;
struct TYPE_7__ {struct inode* d_inode; } ;


 int EIO ;
 int ENOMEM ;
 int FUSE_READDIR ;
 int FUSE_READDIRPLUS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct fuse_req*) ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 struct fuse_req* fuse_get_req (struct fuse_conn*,int) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_read_fill (struct fuse_req*,struct file*,int ,int ,int ) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int page_address (struct page*) ;
 int parse_dirfile (int ,size_t,struct file*,void*,int ) ;
 int parse_dirplusfile (int ,size_t,struct file*,void*,int ,int ) ;

__attribute__((used)) static int fuse_readdir(struct file *file, void *dstbuf, filldir_t filldir)
{
 int err;
 size_t nbytes;
 struct page *page;
 struct inode *inode = file->f_path.dentry->d_inode;
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_req *req;
 u64 attr_version = 0;

 if (is_bad_inode(inode))
  return -EIO;

 req = fuse_get_req(fc, 1);
 if (IS_ERR(req))
  return PTR_ERR(req);

 page = alloc_page(GFP_KERNEL);
 if (!page) {
  fuse_put_request(fc, req);
  return -ENOMEM;
 }
 req->out.argpages = 1;
 req->num_pages = 1;
 req->pages[0] = page;
 req->page_descs[0].length = PAGE_SIZE;
 if (fc->do_readdirplus) {
  attr_version = fuse_get_attr_version(fc);
  fuse_read_fill(req, file, file->f_pos, PAGE_SIZE,
          FUSE_READDIRPLUS);
 } else {
  fuse_read_fill(req, file, file->f_pos, PAGE_SIZE,
          FUSE_READDIR);
 }
 fuse_request_send(fc, req);
 nbytes = req->out.args[0].size;
 err = req->out.h.error;
 fuse_put_request(fc, req);
 if (!err) {
  if (fc->do_readdirplus) {
   err = parse_dirplusfile(page_address(page), nbytes,
      file, dstbuf, filldir,
      attr_version);
  } else {
   err = parse_dirfile(page_address(page), nbytes, file,
         dstbuf, filldir);
  }
 }

 __free_page(page);
 fuse_invalidate_attr(inode);
 return err;
}
