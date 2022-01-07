
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_sb; } ;
typedef int __le32 ;
struct TYPE_2__ {int k_objectid; int k_dir_id; } ;


 TYPE_1__* INODE_PKEY (struct inode*) ;
 scalar_t__ TEST_OPTION (int ,int ) ;
 scalar_t__ block_group_used (int ,int) ;
 int le32_to_cpu (int ) ;
 int packing_groups ;

__le32 reiserfs_choose_packing(struct inode * dir)
{
 __le32 packing;
 if (TEST_OPTION(packing_groups, dir->i_sb)) {
  u32 parent_dir = le32_to_cpu(INODE_PKEY(dir)->k_dir_id);




  if (parent_dir == 1 || block_group_used(dir->i_sb, parent_dir))
   packing = INODE_PKEY(dir)->k_objectid;
  else
   packing = INODE_PKEY(dir)->k_dir_id;
 } else
  packing = INODE_PKEY(dir)->k_objectid;
 return packing;
}
