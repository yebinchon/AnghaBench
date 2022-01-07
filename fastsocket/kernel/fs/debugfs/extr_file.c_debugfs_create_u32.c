
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
 int fops_u32 ;
 int fops_u32_ro ;
 int fops_u32_wo ;

struct dentry *debugfs_create_u32(const char *name, mode_t mode,
     struct dentry *parent, u32 *value)
{

 if (!(mode & S_IWUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_u32_ro);

 if (!(mode & S_IRUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_u32_wo);

 return debugfs_create_file(name, mode, parent, value, &fops_u32);
}
