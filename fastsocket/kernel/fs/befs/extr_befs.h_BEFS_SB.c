
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;
typedef int befs_sb_info ;



__attribute__((used)) static inline befs_sb_info *
BEFS_SB(const struct super_block *super)
{
 return (befs_sb_info *) super->s_fs_info;
}
