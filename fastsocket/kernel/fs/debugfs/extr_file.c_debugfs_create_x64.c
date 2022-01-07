
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dentry {int dummy; } ;
typedef int mode_t ;


 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,int *,int *) ;
 int fops_x64 ;

struct dentry *debugfs_create_x64(const char *name, mode_t mode,
     struct dentry *parent, u64 *value)
{
 return debugfs_create_file(name, mode, parent, value, &fops_x64);
}
