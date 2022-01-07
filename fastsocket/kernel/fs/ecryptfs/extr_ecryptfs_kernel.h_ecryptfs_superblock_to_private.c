
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;
struct ecryptfs_sb_info {int dummy; } ;



__attribute__((used)) static inline struct ecryptfs_sb_info *
ecryptfs_superblock_to_private(struct super_block *sb)
{
 return (struct ecryptfs_sb_info *)sb->s_fs_info;
}
