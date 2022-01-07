
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dentry {int dummy; } ;
typedef int mode_t ;


 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,int *,int *) ;
 int fops_bool ;

struct dentry *debugfs_create_bool(const char *name, mode_t mode,
       struct dentry *parent, u32 *value)
{
 return debugfs_create_file(name, mode, parent, value, &fops_bool);
}
