
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dentry {int dummy; } ;
typedef int mode_t ;


 int S_IRUGO ;
 int S_IWUGO ;
 struct dentry* debugfs_create_file (char const*,int,struct dentry*,int *,int *) ;
 int fops_u16 ;
 int fops_u16_ro ;
 int fops_u16_wo ;

struct dentry *debugfs_create_u16(const char *name, mode_t mode,
      struct dentry *parent, u16 *value)
{

 if (!(mode & S_IWUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_u16_ro);

 if (!(mode & S_IRUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_u16_wo);

 return debugfs_create_file(name, mode, parent, value, &fops_u16);
}
