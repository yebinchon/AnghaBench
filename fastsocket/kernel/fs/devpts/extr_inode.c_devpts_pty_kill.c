
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct inode* driver_data; } ;
struct super_block {struct dentry* s_root; } ;
struct inode {scalar_t__ i_rdev; int i_nlink; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ MKDEV (int ,int ) ;
 int PTMX_MINOR ;
 int TTYAUX_MAJOR ;
 int d_delete (struct dentry*) ;
 struct dentry* d_find_alias (struct inode*) ;
 int dput (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct super_block* pts_sb_from_inode (struct inode*) ;

void devpts_pty_kill(struct tty_struct *tty)
{
 struct inode *inode = tty->driver_data;
 struct super_block *sb = pts_sb_from_inode(inode);
 struct dentry *root = sb->s_root;
 struct dentry *dentry;

 BUG_ON(inode->i_rdev == MKDEV(TTYAUX_MAJOR, PTMX_MINOR));

 mutex_lock(&root->d_inode->i_mutex);

 dentry = d_find_alias(inode);
 if (IS_ERR(dentry))
  goto out;

 if (dentry) {
  inode->i_nlink--;
  d_delete(dentry);
  dput(dentry);
 }

 dput(dentry);
out:
 mutex_unlock(&root->d_inode->i_mutex);
}
