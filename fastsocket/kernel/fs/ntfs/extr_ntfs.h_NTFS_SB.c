
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
typedef int ntfs_volume ;



__attribute__((used)) static inline ntfs_volume *NTFS_SB(struct super_block *sb)
{
 return sb->s_fs_info;
}
