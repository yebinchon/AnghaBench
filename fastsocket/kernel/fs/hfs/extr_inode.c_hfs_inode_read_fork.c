
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct hfs_extent {int count; } ;
typedef int hfs_extent_rec ;
typedef int __be32 ;
struct TYPE_4__ {int phys_size; int fs_blocks; int alloc_blocks; int clump_blocks; scalar_t__ first_blocks; int first_extents; } ;
struct TYPE_3__ {int alloc_blksz; int clumpablks; } ;


 TYPE_2__* HFS_I (struct inode*) ;
 TYPE_1__* HFS_SB (struct super_block*) ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int inode_set_bytes (struct inode*,int) ;
 int memcpy (int ,struct hfs_extent*,int) ;

void hfs_inode_read_fork(struct inode *inode, struct hfs_extent *ext,
    __be32 __log_size, __be32 phys_size, u32 clump_size)
{
 struct super_block *sb = inode->i_sb;
 u32 log_size = be32_to_cpu(__log_size);
 u16 count;
 int i;

 memcpy(HFS_I(inode)->first_extents, ext, sizeof(hfs_extent_rec));
 for (count = 0, i = 0; i < 3; i++)
  count += be16_to_cpu(ext[i].count);
 HFS_I(inode)->first_blocks = count;

 inode->i_size = HFS_I(inode)->phys_size = log_size;
 HFS_I(inode)->fs_blocks = (log_size + sb->s_blocksize - 1) >> sb->s_blocksize_bits;
 inode_set_bytes(inode, HFS_I(inode)->fs_blocks << sb->s_blocksize_bits);
 HFS_I(inode)->alloc_blocks = be32_to_cpu(phys_size) /
         HFS_SB(sb)->alloc_blksz;
 HFS_I(inode)->clump_blocks = clump_size / HFS_SB(sb)->alloc_blksz;
 if (!HFS_I(inode)->clump_blocks)
  HFS_I(inode)->clump_blocks = HFS_SB(sb)->clumpablks;
}
