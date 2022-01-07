
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_sb_info {int dummy; } ;
struct super_block {struct udf_sb_info* s_fs_info; } ;



__attribute__((used)) static inline struct udf_sb_info *UDF_SB(struct super_block *sb)
{
 return sb->s_fs_info;
}
