
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct udf_sb_info {TYPE_1__* s_lvid_bh; } ;
struct logicalVolIntegrityDescImpUse {int dummy; } ;
struct logicalVolIntegrityDesc {int * impUse; int numOfPartitions; } ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int le32_to_cpu (int ) ;

struct logicalVolIntegrityDescImpUse *udf_sb_lvidiu(struct udf_sb_info *sbi)
{
 struct logicalVolIntegrityDesc *lvid =
  (struct logicalVolIntegrityDesc *)sbi->s_lvid_bh->b_data;
 __u32 number_of_partitions = le32_to_cpu(lvid->numOfPartitions);
 __u32 offset = number_of_partitions * 2 *
    sizeof(uint32_t)/sizeof(uint8_t);
 return (struct logicalVolIntegrityDescImpUse *)&(lvid->impUse[offset]);
}
