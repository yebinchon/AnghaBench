
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int ff; int * pages; } ;
struct fuse_conn {int dummy; } ;


 int __free_page (int ) ;
 int fuse_file_put (int ) ;

__attribute__((used)) static void fuse_writepage_free(struct fuse_conn *fc, struct fuse_req *req)
{
 __free_page(req->pages[0]);
 fuse_file_put(req->ff);
}
