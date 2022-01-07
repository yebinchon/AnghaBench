
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int mode_t ;
typedef int gid_t ;
struct TYPE_2__ {int i_gid; int i_uid; struct file_operations const* i_fop; void* i_private; } ;


 int dbg (char*,char const*) ;
 int fs_create_by_name (char const*,int ,struct dentry*,struct dentry**) ;

__attribute__((used)) static struct dentry *fs_create_file (const char *name, mode_t mode,
          struct dentry *parent, void *data,
          const struct file_operations *fops,
          uid_t uid, gid_t gid)
{
 struct dentry *dentry;
 int error;

 dbg("creating file '%s'",name);

 error = fs_create_by_name (name, mode, parent, &dentry);
 if (error) {
  dentry = ((void*)0);
 } else {
  if (dentry->d_inode) {
   if (data)
    dentry->d_inode->i_private = data;
   if (fops)
    dentry->d_inode->i_fop = fops;
   dentry->d_inode->i_uid = uid;
   dentry->d_inode->i_gid = gid;
  }
 }

 return dentry;
}
