
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file {int reserved_req; } ;


 int fuse_request_free (int ) ;
 int kfree (struct fuse_file*) ;

void fuse_file_free(struct fuse_file *ff)
{
 fuse_request_free(ff->reserved_req);
 kfree(ff);
}
