
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;
struct ecryptfs_sb_info {struct super_block* wsi_sb; } ;



__attribute__((used)) static inline void
ecryptfs_set_superblock_lower(struct super_block *sb,
         struct super_block *lower_sb)
{
 ((struct ecryptfs_sb_info *)sb->s_fs_info)->wsi_sb = lower_sb;
}
