
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int mode_t ;


 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,size_t*,int *) ;
 int fops_size_t ;

struct dentry *debugfs_create_size_t(const char *name, mode_t mode,
         struct dentry *parent, size_t *value)
{
 return debugfs_create_file(name, mode, parent, value, &fops_size_t);
}
