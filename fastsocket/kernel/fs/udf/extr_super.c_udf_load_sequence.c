
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_sb_info {int dummy; } ;
struct super_block {long s_blocksize_bits; } ;
struct kernel_lb_addr {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int extLength; int extLocation; } ;
struct TYPE_3__ {int extLength; int extLocation; } ;
struct anchorVolDescPtr {TYPE_2__ reserveVolDescSeqExt; TYPE_1__ mainVolDescSeqExt; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 long le32_to_cpu (int ) ;
 int udf_process_sequence (struct super_block*,long,long,struct kernel_lb_addr*) ;

__attribute__((used)) static int udf_load_sequence(struct super_block *sb, struct buffer_head *bh,
        struct kernel_lb_addr *fileset)
{
 struct anchorVolDescPtr *anchor;
 long main_s, main_e, reserve_s, reserve_e;
 struct udf_sb_info *sbi;

 sbi = UDF_SB(sb);
 anchor = (struct anchorVolDescPtr *)bh->b_data;


 main_s = le32_to_cpu(anchor->mainVolDescSeqExt.extLocation);
 main_e = le32_to_cpu(anchor->mainVolDescSeqExt.extLength);
 main_e = main_e >> sb->s_blocksize_bits;
 main_e += main_s;


 reserve_s = le32_to_cpu(anchor->reserveVolDescSeqExt.extLocation);
 reserve_e = le32_to_cpu(anchor->reserveVolDescSeqExt.extLength);
 reserve_e = reserve_e >> sb->s_blocksize_bits;
 reserve_e += reserve_s;



 if (!udf_process_sequence(sb, main_s, main_e, fileset))
  return 1;
 return !udf_process_sequence(sb, reserve_s, reserve_e, fileset);
}
