
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct debugfs_blob_wrapper {int dummy; } ;
typedef int mode_t ;


 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,struct debugfs_blob_wrapper*,int *) ;
 int fops_blob ;

struct dentry *debugfs_create_blob(const char *name, mode_t mode,
       struct dentry *parent,
       struct debugfs_blob_wrapper *blob)
{
 return debugfs_create_file(name, mode, parent, blob, &fops_blob);
}
