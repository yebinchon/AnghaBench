
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int end; } ;
struct fuse_file {int fc; struct fuse_req* reserved_req; int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int fuse_release_end ;
 int fuse_request_send_background (int ,struct fuse_req*) ;
 int kfree (struct fuse_file*) ;

__attribute__((used)) static void fuse_file_put(struct fuse_file *ff)
{
 if (atomic_dec_and_test(&ff->count)) {
  struct fuse_req *req = ff->reserved_req;

  req->end = fuse_release_end;
  fuse_request_send_background(ff->fc, req);
  kfree(ff);
 }
}
