
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {scalar_t__ stolen_file; scalar_t__ waiting; int count; } ;
struct fuse_conn {int num_waiting; } ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int fuse_request_free (struct fuse_req*) ;
 int put_reserved_req (struct fuse_conn*,struct fuse_req*) ;

void fuse_put_request(struct fuse_conn *fc, struct fuse_req *req)
{
 if (atomic_dec_and_test(&req->count)) {
  if (req->waiting)
   atomic_dec(&fc->num_waiting);

  if (req->stolen_file)
   put_reserved_req(fc, req);
  else
   fuse_request_free(req);
 }
}
