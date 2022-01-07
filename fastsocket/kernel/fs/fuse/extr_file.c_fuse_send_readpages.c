
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attr_ver; } ;
struct TYPE_6__ {TYPE_2__ read; } ;
struct TYPE_4__ {int argpages; int page_zeroing; } ;
struct fuse_req {size_t num_pages; int (* end ) (struct fuse_conn*,struct fuse_req*) ;int ff; TYPE_3__ misc; TYPE_1__ out; int * pages; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {scalar_t__ async_read; } ;
struct file {struct fuse_file* private_data; } ;
typedef int loff_t ;


 int FUSE_READ ;
 size_t PAGE_CACHE_SHIFT ;
 int fuse_file_get (struct fuse_file*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_read_fill (struct fuse_req*,struct file*,int ,size_t,int ) ;
 int fuse_readpages_end (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send_background (struct fuse_conn*,struct fuse_req*) ;
 int page_offset (int ) ;

__attribute__((used)) static void fuse_send_readpages(struct fuse_req *req, struct file *file)
{
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;
 loff_t pos = page_offset(req->pages[0]);
 size_t count = req->num_pages << PAGE_CACHE_SHIFT;

 req->out.argpages = 1;
 req->out.page_zeroing = 1;
 fuse_read_fill(req, file, pos, count, FUSE_READ);
 req->misc.read.attr_ver = fuse_get_attr_version(fc);
 if (fc->async_read) {
  req->ff = fuse_file_get(ff);
  req->end = fuse_readpages_end;
  fuse_request_send_background(fc, req);
 } else {
  fuse_request_send(fc, req);
  fuse_readpages_end(fc, req);
  fuse_put_request(fc, req);
 }
}
