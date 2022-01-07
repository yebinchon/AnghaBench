
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int * id_table; } ;
typedef int disk_id ;
typedef int __le32 ;


 int SQUASHFS_ID_BLOCK (unsigned int) ;
 int SQUASHFS_ID_BLOCK_OFFSET (unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int squashfs_read_metadata (struct super_block*,int *,int *,int*,int) ;

int squashfs_get_id(struct super_block *sb, unsigned int index,
     unsigned int *id)
{
 struct squashfs_sb_info *msblk = sb->s_fs_info;
 int block = SQUASHFS_ID_BLOCK(index);
 int offset = SQUASHFS_ID_BLOCK_OFFSET(index);
 u64 start_block = le64_to_cpu(msblk->id_table[block]);
 __le32 disk_id;
 int err;

 err = squashfs_read_metadata(sb, &disk_id, &start_block, &offset,
       sizeof(disk_id));
 if (err < 0)
  return err;

 *id = le32_to_cpu(disk_id);
 return 0;
}
