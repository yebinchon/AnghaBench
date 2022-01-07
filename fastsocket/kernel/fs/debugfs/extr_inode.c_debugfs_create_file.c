
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;
typedef int mode_t ;


 int debug_fs_type ;
 int debugfs_create_by_name (char const*,int ,struct dentry*,struct dentry**,void*,struct file_operations const*) ;
 int debugfs_mount ;
 int debugfs_mount_count ;
 int pr_debug (char*,char const*) ;
 int simple_pin_fs (int *,int *,int *) ;
 int simple_release_fs (int *,int *) ;

struct dentry *debugfs_create_file(const char *name, mode_t mode,
       struct dentry *parent, void *data,
       const struct file_operations *fops)
{
 struct dentry *dentry = ((void*)0);
 int error;

 pr_debug("debugfs: creating file '%s'\n",name);

 error = simple_pin_fs(&debug_fs_type, &debugfs_mount,
         &debugfs_mount_count);
 if (error)
  goto exit;

 error = debugfs_create_by_name(name, mode, parent, &dentry,
           data, fops);
 if (error) {
  dentry = ((void*)0);
  simple_release_fs(&debugfs_mount, &debugfs_mount_count);
  goto exit;
 }
exit:
 return dentry;
}
