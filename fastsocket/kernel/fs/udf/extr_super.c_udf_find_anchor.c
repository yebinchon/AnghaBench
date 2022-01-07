
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_sb_info {scalar_t__ s_last_block; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
typedef scalar_t__ sector_t ;


 int UDF_CLEAR_FLAG (struct super_block*,int ) ;
 int UDF_FLAG_VARCONV ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int UDF_SET_FLAG (struct super_block*,int ) ;
 scalar_t__ udf_scan_anchors (struct super_block*,scalar_t__,struct kernel_lb_addr*) ;
 scalar_t__ udf_variable_to_fixed (scalar_t__) ;

__attribute__((used)) static int udf_find_anchor(struct super_block *sb,
      struct kernel_lb_addr *fileset)
{
 sector_t lastblock;
 struct udf_sb_info *sbi = UDF_SB(sb);

 lastblock = udf_scan_anchors(sb, sbi->s_last_block, fileset);
 if (lastblock)
  goto out;


 UDF_SET_FLAG(sb, UDF_FLAG_VARCONV);

 lastblock = udf_scan_anchors(sb,
    udf_variable_to_fixed(sbi->s_last_block),
    fileset);
 if (lastblock)
  goto out;


 lastblock = udf_scan_anchors(sb, sbi->s_last_block, fileset);
 if (!lastblock) {

  UDF_CLEAR_FLAG(sb, UDF_FLAG_VARCONV);
  return 0;
 }
out:
 sbi->s_last_block = lastblock;
 return 1;
}
