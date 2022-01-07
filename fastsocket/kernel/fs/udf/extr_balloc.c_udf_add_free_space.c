
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct udf_sb_info {TYPE_1__* s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDesc {int * freeSpaceTable; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int le32_add_cpu (int *,int ) ;
 int udf_updated_lvid (struct super_block*) ;

__attribute__((used)) static void udf_add_free_space(struct super_block *sb, u16 partition, u32 cnt)
{
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct logicalVolIntegrityDesc *lvid;

 if (!sbi->s_lvid_bh)
  return;

 lvid = (struct logicalVolIntegrityDesc *)sbi->s_lvid_bh->b_data;
 le32_add_cpu(&lvid->freeSpaceTable[partition], cnt);
 udf_updated_lvid(sb);
}
