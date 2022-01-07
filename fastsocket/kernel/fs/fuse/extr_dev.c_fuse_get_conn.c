
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int dummy; } ;
struct file {struct fuse_conn* private_data; } ;



__attribute__((used)) static struct fuse_conn *fuse_get_conn(struct file *file)
{




 return file->private_data;
}
