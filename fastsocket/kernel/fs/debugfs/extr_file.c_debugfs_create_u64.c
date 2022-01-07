
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dentry {int dummy; } ;
typedef int mode_t ;


 int S_IRUGO ;
 int S_IWUGO ;
 struct dentry* debugfs_create_file (char const*,int,struct dentry*,int *,int *) ;
 int fops_u64 ;
 int fops_u64_ro ;
 int fops_u64_wo ;

struct dentry *debugfs_create_u64(const char *name, mode_t mode,
     struct dentry *parent, u64 *value)
{

 if (!(mode & S_IWUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_u64_ro);

 if (!(mode & S_IRUGO))
  return debugfs_create_file(name, mode, parent, value, &fops_u64_wo);

 return debugfs_create_file(name, mode, parent, value, &fops_u64);
}
