
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_sb_info {unsigned long s_stripe; unsigned long s_blocks_per_group; TYPE_1__* s_es; } ;
struct TYPE_2__ {int s_raid_stripe_width; int s_raid_stride; } ;


 unsigned long le16_to_cpu (int ) ;
 unsigned long le32_to_cpu (int ) ;

__attribute__((used)) static unsigned long ext4_get_stripe_size(struct ext4_sb_info *sbi)
{
 unsigned long stride = le16_to_cpu(sbi->s_es->s_raid_stride);
 unsigned long stripe_width =
   le32_to_cpu(sbi->s_es->s_raid_stripe_width);

 if (sbi->s_stripe && sbi->s_stripe <= sbi->s_blocks_per_group)
  return sbi->s_stripe;

 if (stripe_width <= sbi->s_blocks_per_group)
  return stripe_width;

 if (stride <= sbi->s_blocks_per_group)
  return stride;

 return 0;
}
