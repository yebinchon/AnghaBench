
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 unsigned char DT_UNKNOWN ;
 int EXT4_FEATURE_INCOMPAT_FILETYPE ;
 int EXT4_FT_MAX ;
 int EXT4_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 unsigned char* ext4_filetype_table ;

__attribute__((used)) static unsigned char get_dtype(struct super_block *sb, int filetype)
{
 if (!EXT4_HAS_INCOMPAT_FEATURE(sb, EXT4_FEATURE_INCOMPAT_FILETYPE) ||
     (filetype >= EXT4_FT_MAX))
  return DT_UNKNOWN;

 return (ext4_filetype_table[filetype]);
}
