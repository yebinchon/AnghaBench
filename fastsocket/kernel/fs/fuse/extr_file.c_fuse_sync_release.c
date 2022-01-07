
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fuse_file {TYPE_1__* reserved_req; int fc; int count; } ;
struct TYPE_3__ {int force; } ;


 int FUSE_RELEASE ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int fuse_prepare_release (struct fuse_file*,int,int ) ;
 int fuse_put_request (int ,TYPE_1__*) ;
 int fuse_request_send (int ,TYPE_1__*) ;
 int kfree (struct fuse_file*) ;

void fuse_sync_release(struct fuse_file *ff, int flags)
{
 WARN_ON(atomic_read(&ff->count) > 1);
 fuse_prepare_release(ff, flags, FUSE_RELEASE);
 ff->reserved_req->force = 1;
 fuse_request_send(ff->fc, ff->reserved_req);
 fuse_put_request(ff->fc, ff->reserved_req);
 kfree(ff);
}
