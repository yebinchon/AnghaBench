
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int (* release ) (struct fuse_conn*) ;int inst_mutex; scalar_t__ destroy_req; int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int fuse_request_free (scalar_t__) ;
 int mutex_destroy (int *) ;
 int stub1 (struct fuse_conn*) ;

void fuse_conn_put(struct fuse_conn *fc)
{
 if (atomic_dec_and_test(&fc->count)) {
  if (fc->destroy_req)
   fuse_request_free(fc->destroy_req);
  mutex_destroy(&fc->inst_mutex);
  fc->release(fc);
 }
}
