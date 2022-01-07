
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hpfs_inode_info {scalar_t__ i_dirty; } ;


 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int hpfs_write_inode (struct inode*) ;

void hpfs_write_if_changed(struct inode *inode)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(inode);

 if (hpfs_inode->i_dirty)
  hpfs_write_inode(inode);
}
