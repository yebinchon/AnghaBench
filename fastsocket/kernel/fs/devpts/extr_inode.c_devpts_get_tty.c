
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct inode {scalar_t__ i_rdev; scalar_t__ i_private; TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;


 int BUG_ON (int) ;
 scalar_t__ DEVPTS_SUPER_MAGIC ;
 scalar_t__ MKDEV (int ,int ) ;
 int PTMX_MINOR ;
 int TTYAUX_MAJOR ;
 struct dentry* d_find_alias (struct inode*) ;
 int dput (struct dentry*) ;

struct tty_struct *devpts_get_tty(struct inode *pts_inode, int number)
{
 struct dentry *dentry;
 struct tty_struct *tty;

 BUG_ON(pts_inode->i_rdev == MKDEV(TTYAUX_MAJOR, PTMX_MINOR));


 dentry = d_find_alias(pts_inode);
 if (!dentry)
  return ((void*)0);

 tty = ((void*)0);
 if (pts_inode->i_sb->s_magic == DEVPTS_SUPER_MAGIC)
  tty = (struct tty_struct *)pts_inode->i_private;

 dput(dentry);

 return tty;
}
