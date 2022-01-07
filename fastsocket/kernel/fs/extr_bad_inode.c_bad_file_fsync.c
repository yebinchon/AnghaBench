
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_file_fsync(struct file *file, struct dentry *dentry,
   int datasync)
{
 return -EIO;
}
