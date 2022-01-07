
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_trans_handle {int dummy; } ;


 int EEXIST ;
 int btrfs_add_link (struct btrfs_trans_handle*,struct inode*,struct inode*,int ,int ,int,int ) ;

__attribute__((used)) static int btrfs_add_nondir(struct btrfs_trans_handle *trans,
       struct inode *dir, struct dentry *dentry,
       struct inode *inode, int backref, u64 index)
{
 int err = btrfs_add_link(trans, dir, inode,
     dentry->d_name.name, dentry->d_name.len,
     backref, index);
 if (err > 0)
  err = -EEXIST;
 return err;
}
