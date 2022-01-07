
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct TYPE_5__ {char* name; } ;
struct dentry {TYPE_3__* d_inode; TYPE_2__ d_name; } ;
struct TYPE_6__ {int i_mode; } ;
struct TYPE_4__ {int rename; } ;


 int EPERM ;
 int S_ISDIR (int ) ;
 int fsnotify_move (struct inode*,struct inode*,char const*,char const*,int,TYPE_3__*,struct dentry*) ;
 int fsnotify_oldname_free (char const*) ;
 char* fsnotify_oldname_init (char*) ;
 int may_create (struct inode*,struct dentry*) ;
 int may_delete (struct inode*,struct dentry*,int) ;
 int vfs_dq_init (struct inode*) ;
 int vfs_rename_dir (struct inode*,struct dentry*,struct inode*,struct dentry*) ;
 int vfs_rename_other (struct inode*,struct dentry*,struct inode*,struct dentry*) ;

int vfs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry)
{
 int error;
 int is_dir = S_ISDIR(old_dentry->d_inode->i_mode);
 const char *old_name;

 if (old_dentry->d_inode == new_dentry->d_inode)
   return 0;

 error = may_delete(old_dir, old_dentry, is_dir);
 if (error)
  return error;

 if (!new_dentry->d_inode)
  error = may_create(new_dir, new_dentry);
 else
  error = may_delete(new_dir, new_dentry, is_dir);
 if (error)
  return error;

 if (!old_dir->i_op->rename)
  return -EPERM;

 vfs_dq_init(old_dir);
 vfs_dq_init(new_dir);

 old_name = fsnotify_oldname_init(old_dentry->d_name.name);

 if (is_dir)
  error = vfs_rename_dir(old_dir,old_dentry,new_dir,new_dentry);
 else
  error = vfs_rename_other(old_dir,old_dentry,new_dir,new_dentry);
 if (!error) {
  const char *new_name = old_dentry->d_name.name;
  fsnotify_move(old_dir, new_dir, old_name, new_name, is_dir,
         new_dentry->d_inode, old_dentry);
 }
 fsnotify_oldname_free(old_name);

 return error;
}
