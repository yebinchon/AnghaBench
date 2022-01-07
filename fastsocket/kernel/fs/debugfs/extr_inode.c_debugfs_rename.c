
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct TYPE_7__ {int i_mode; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int S_ISDIR (int ) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify_move (TYPE_2__*,TYPE_2__*,char const*,int ,int ,int *,struct dentry*) ;
 int fsnotify_oldname_free (char const*) ;
 char* fsnotify_oldname_init (int ) ;
 struct dentry* lock_rename (struct dentry*,struct dentry*) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int simple_rename (TYPE_2__*,struct dentry*,TYPE_2__*,struct dentry*) ;
 int strlen (char const*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;

struct dentry *debugfs_rename(struct dentry *old_dir, struct dentry *old_dentry,
  struct dentry *new_dir, const char *new_name)
{
 int error;
 struct dentry *dentry = ((void*)0), *trap;
 const char *old_name;

 trap = lock_rename(new_dir, old_dir);

 if (!old_dir->d_inode || !new_dir->d_inode)
  goto exit;

 if (!old_dentry->d_inode || old_dentry == trap ||
     d_mountpoint(old_dentry))
  goto exit;
 dentry = lookup_one_len(new_name, new_dir, strlen(new_name));

 if (IS_ERR(dentry) || dentry == trap || dentry->d_inode)
  goto exit;

 old_name = fsnotify_oldname_init(old_dentry->d_name.name);

 error = simple_rename(old_dir->d_inode, old_dentry, new_dir->d_inode,
  dentry);
 if (error) {
  fsnotify_oldname_free(old_name);
  goto exit;
 }
 d_move(old_dentry, dentry);
 fsnotify_move(old_dir->d_inode, new_dir->d_inode, old_name,
  old_dentry->d_name.name, S_ISDIR(old_dentry->d_inode->i_mode),
  ((void*)0), old_dentry);
 fsnotify_oldname_free(old_name);
 unlock_rename(new_dir, old_dir);
 dput(dentry);
 return old_dentry;
exit:
 if (dentry && !IS_ERR(dentry))
  dput(dentry);
 unlock_rename(new_dir, old_dir);
 return ((void*)0);
}
