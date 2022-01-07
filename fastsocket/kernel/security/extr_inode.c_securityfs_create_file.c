
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int mode_t ;
struct TYPE_2__ {void* i_private; struct file_operations const* i_fop; } ;


 struct dentry* ERR_PTR (int) ;
 int create_by_name (char const*,int ,struct dentry*,struct dentry**) ;
 int fs_type ;
 int mount ;
 int mount_count ;
 int pr_debug (char*,char const*) ;
 int simple_pin_fs (int *,int *,int *) ;
 int simple_release_fs (int *,int *) ;

struct dentry *securityfs_create_file(const char *name, mode_t mode,
       struct dentry *parent, void *data,
       const struct file_operations *fops)
{
 struct dentry *dentry = ((void*)0);
 int error;

 pr_debug("securityfs: creating file '%s'\n",name);

 error = simple_pin_fs(&fs_type, &mount, &mount_count);
 if (error) {
  dentry = ERR_PTR(error);
  goto exit;
 }

 error = create_by_name(name, mode, parent, &dentry);
 if (error) {
  dentry = ERR_PTR(error);
  simple_release_fs(&mount, &mount_count);
  goto exit;
 }

 if (dentry->d_inode) {
  if (fops)
   dentry->d_inode->i_fop = fops;
  if (data)
   dentry->d_inode->i_private = data;
 }
exit:
 return dentry;
}
