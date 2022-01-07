
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_header {int eh_entries; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {scalar_t__ p_idx; struct ext4_extent_header* p_hdr; struct ext4_extent* p_ext; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;


 int EXT4_INODE_EOFBLOCKS ;
 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 scalar_t__ EXT_LAST_INDEX (struct ext4_extent_header*) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_eofblocks_fl(handle_t *handle, struct inode *inode,
         ext4_lblk_t iblock,
         struct ext4_ext_path *path,
         unsigned int len)
{
 int i, depth;
 struct ext4_extent_header *eh;
 struct ext4_extent *ex, *last_ex;

 if (!ext4_test_inode_flag(inode, EXT4_INODE_EOFBLOCKS))
  return 0;

 depth = ext_depth(inode);
 eh = path[depth].p_hdr;
 ex = path[depth].p_ext;






 if (unlikely(!eh->eh_entries))
  goto out;
 last_ex = EXT_LAST_EXTENT(eh);
 if (iblock + len < le32_to_cpu(last_ex->ee_block) +
     ext4_ext_get_actual_len(last_ex))
  return 0;







 for (i = depth-1; i >= 0; i--)
  if (path[i].p_idx != EXT_LAST_INDEX(path[i].p_hdr))
   return 0;
out:
 ext4_clear_inode_flag(inode, EXT4_INODE_EOFBLOCKS);
 return ext4_mark_inode_dirty(handle, inode);
}
