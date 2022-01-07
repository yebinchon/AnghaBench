
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int ext_tree; } ;


 int HFSPLUS_FLG_EXT_DIRTY ;
 TYPE_2__ HFSPLUS_I (struct inode*) ;
 TYPE_1__ HFSPLUS_SB (int ) ;
 int __hfsplus_ext_write_extent (struct inode*,struct hfs_find_data*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;

void hfsplus_ext_write_extent(struct inode *inode)
{
 if (HFSPLUS_I(inode).flags & HFSPLUS_FLG_EXT_DIRTY) {
  struct hfs_find_data fd;

  hfs_find_init(HFSPLUS_SB(inode->i_sb).ext_tree, &fd);
  __hfsplus_ext_write_extent(inode, &fd);
  hfs_find_exit(&fd);
 }
}
