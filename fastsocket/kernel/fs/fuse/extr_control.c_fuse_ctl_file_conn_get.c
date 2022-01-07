
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fuse_conn {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct fuse_conn* i_private; } ;


 struct fuse_conn* fuse_conn_get (struct fuse_conn*) ;
 int fuse_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct fuse_conn *fuse_ctl_file_conn_get(struct file *file)
{
 struct fuse_conn *fc;
 mutex_lock(&fuse_mutex);
 fc = file->f_path.dentry->d_inode->i_private;
 if (fc)
  fc = fuse_conn_get(fc);
 mutex_unlock(&fuse_mutex);
 return fc;
}
