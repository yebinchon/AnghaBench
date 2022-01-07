
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct page {TYPE_3__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_13__ {int error; } ;
struct TYPE_14__ {TYPE_6__ h; TYPE_2__* args; } ;
struct TYPE_8__ {size_t size; } ;
struct TYPE_11__ {int attr_ver; TYPE_1__ in; } ;
struct TYPE_12__ {TYPE_4__ read; } ;
struct fuse_req {int num_pages; scalar_t__ ff; TYPE_7__ out; struct page** pages; TYPE_5__ misc; } ;
struct fuse_conn {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_10__ {struct inode* host; } ;
struct TYPE_9__ {size_t size; } ;


 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int fuse_file_put (scalar_t__) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_read_update_size (struct inode*,scalar_t__,int ) ;
 scalar_t__ page_offset (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void fuse_readpages_end(struct fuse_conn *fc, struct fuse_req *req)
{
 int i;
 size_t count = req->misc.read.in.size;
 size_t num_read = req->out.args[0].size;
 struct inode *inode = req->pages[0]->mapping->host;




 if (!req->out.h.error && num_read < count) {
  loff_t pos = page_offset(req->pages[0]) + num_read;
  fuse_read_update_size(inode, pos, req->misc.read.attr_ver);
 }

 fuse_invalidate_attr(inode);

 for (i = 0; i < req->num_pages; i++) {
  struct page *page = req->pages[i];
  if (!req->out.h.error)
   SetPageUptodate(page);
  else
   SetPageError(page);
  unlock_page(page);
 }
 if (req->ff)
  fuse_file_put(req->ff);
}
