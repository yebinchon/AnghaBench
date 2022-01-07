
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fuse_conn {int ctl_ndents; struct dentry** ctl_dentry; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_6__ {TYPE_2__* s_root; } ;
struct TYPE_5__ {int d_inode; } ;
struct TYPE_4__ {int * i_private; } ;


 int d_drop (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (int ) ;
 TYPE_3__* fuse_control_sb ;

void fuse_ctl_remove_conn(struct fuse_conn *fc)
{
 int i;

 if (!fuse_control_sb)
  return;

 for (i = fc->ctl_ndents - 1; i >= 0; i--) {
  struct dentry *dentry = fc->ctl_dentry[i];
  dentry->d_inode->i_private = ((void*)0);
  d_drop(dentry);
  dput(dentry);
 }
 drop_nlink(fuse_control_sb->s_root->d_inode);
}
