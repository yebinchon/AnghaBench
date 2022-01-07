
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 unsigned char DT_UNKNOWN ;
 int EXT3_FEATURE_INCOMPAT_FILETYPE ;
 int EXT3_FT_MAX ;
 int EXT3_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 unsigned char* ext3_filetype_table ;

__attribute__((used)) static unsigned char get_dtype(struct super_block *sb, int filetype)
{
 if (!EXT3_HAS_INCOMPAT_FEATURE(sb, EXT3_FEATURE_INCOMPAT_FILETYPE) ||
     (filetype >= EXT3_FT_MAX))
  return DT_UNKNOWN;

 return (ext3_filetype_table[filetype]);
}
