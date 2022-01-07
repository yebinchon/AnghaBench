
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
struct TYPE_4__ {TYPE_1__ release; } ;
struct fuse_req {TYPE_2__ misc; } ;
struct fuse_file {struct fuse_req* reserved_req; } ;
struct file {int f_path; int f_flags; struct fuse_file* private_data; } ;


 int fuse_file_put (struct fuse_file*) ;
 int fuse_prepare_release (struct fuse_file*,int ,int) ;
 int path_get (int *) ;
 scalar_t__ unlikely (int) ;

void fuse_release_common(struct file *file, int opcode)
{
 struct fuse_file *ff;
 struct fuse_req *req;

 ff = file->private_data;
 if (unlikely(!ff))
  return;

 req = ff->reserved_req;
 fuse_prepare_release(ff, file->f_flags, opcode);


 path_get(&file->f_path);
 req->misc.release.path = file->f_path;






 fuse_file_put(ff);
}
