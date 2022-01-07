
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mtime; int i_sb; } ;
struct TYPE_2__ {int name; int len; } ;
struct dentry {struct dentry* d_parent; struct autofs_info* d_fsdata; TYPE_1__ d_name; } ;
struct autofs_sb_info {int version; } ;
struct autofs_info {int count; int dentry; } ;


 int CURRENT_TIME ;
 int DPRINTK (char*,struct dentry*,int ,int ) ;
 int EACCES ;
 int ENOMEM ;
 int S_IFDIR ;
 int atomic_inc (int *) ;
 int autofs4_del_active (struct dentry*) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 struct inode* autofs4_get_inode (int ,struct autofs_info*) ;
 struct autofs_info* autofs4_init_ino (struct autofs_info*,struct autofs_sb_info*,int) ;
 int autofs4_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int autofs_set_leaf_automount_flags (struct dentry*) ;
 int d_add (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int kfree (struct autofs_info*) ;

__attribute__((used)) static int autofs4_dir_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct autofs_sb_info *sbi = autofs4_sbi(dir->i_sb);
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 struct autofs_info *p_ino;
 struct inode *inode;

 if (!autofs4_oz_mode(sbi))
  return -EACCES;

 DPRINTK("dentry %p, creating %.*s",
  dentry, dentry->d_name.len, dentry->d_name.name);

 ino = autofs4_init_ino(ino, sbi, S_IFDIR | 0555);
 if (!ino)
  return -ENOMEM;

 autofs4_del_active(dentry);

 inode = autofs4_get_inode(dir->i_sb, ino);
 if (!inode) {
  if (!dentry->d_fsdata)
   kfree(ino);
  return -ENOMEM;
 }
 d_add(dentry, inode);

 if (sbi->version < 5)
  autofs_set_leaf_automount_flags(dentry);

 dentry->d_fsdata = ino;
 ino->dentry = dget(dentry);
 atomic_inc(&ino->count);
 p_ino = autofs4_dentry_ino(dentry->d_parent);
 if (p_ino && dentry->d_parent != dentry)
  atomic_inc(&p_ino->count);
 inc_nlink(dir);
 dir->i_mtime = CURRENT_TIME;

 return 0;
}
