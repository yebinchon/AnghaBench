
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dentry {int dummy; } ;
typedef int mode_t ;


 int S_IRUGO ;
 int S_IWUGO ;
 struct dentry* debugfs_create_file (char const*,int,struct dentry*,int *,int *) ;
 int fops_x32 ;
 int fops_x32_ro ;
 int fops_x32_wo ;

struct dentry *debugfs_create_x32(const char *name, mode_t mode,
     struct dentry *parent, u32 *value)
{

 if (!(mode & S_IWUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_x32_ro);

 if (!(mode & S_IRUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_x32_wo);

 return debugfs_create_file(name, mode, parent, value, &fops_x32);
}
