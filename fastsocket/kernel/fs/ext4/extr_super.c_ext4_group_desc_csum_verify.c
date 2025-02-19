
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_sb_info {TYPE_1__* s_es; } ;
struct ext4_group_desc {scalar_t__ bg_checksum; } ;
typedef int __u32 ;
struct TYPE_2__ {int s_feature_ro_compat; } ;


 int EXT4_FEATURE_RO_COMPAT_GDT_CSUM ;
 int cpu_to_le32 (int ) ;
 scalar_t__ ext4_group_desc_csum (struct ext4_sb_info*,int ,struct ext4_group_desc*) ;

int ext4_group_desc_csum_verify(struct ext4_sb_info *sbi, __u32 block_group,
    struct ext4_group_desc *gdp)
{
 if ((sbi->s_es->s_feature_ro_compat &
      cpu_to_le32(EXT4_FEATURE_RO_COMPAT_GDT_CSUM)) &&
     (gdp->bg_checksum != ext4_group_desc_csum(sbi, block_group, gdp)))
  return 0;

 return 1;
}
