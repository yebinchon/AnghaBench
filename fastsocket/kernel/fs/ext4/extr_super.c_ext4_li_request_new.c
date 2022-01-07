
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_li_request {scalar_t__ lr_next_sched; int lr_next_group; struct ext4_sb_info* lr_sbi; struct super_block* lr_super; } ;
typedef int rnd ;
typedef int ext4_group_t ;


 unsigned long EXT4_DEF_LI_MAX_START_DELAY ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GFP_KERNEL ;
 unsigned long HZ ;
 int get_random_bytes (unsigned long*,int) ;
 scalar_t__ jiffies ;
 struct ext4_li_request* kzalloc (int,int ) ;

__attribute__((used)) static struct ext4_li_request *ext4_li_request_new(struct super_block *sb,
         ext4_group_t start)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_li_request *elr;
 unsigned long rnd;

 elr = kzalloc(sizeof(*elr), GFP_KERNEL);
 if (!elr)
  return ((void*)0);

 elr->lr_super = sb;
 elr->lr_sbi = sbi;
 elr->lr_next_group = start;






 get_random_bytes(&rnd, sizeof(rnd));
 elr->lr_next_sched = jiffies + (unsigned long)rnd %
        (EXT4_DEF_LI_MAX_START_DELAY * HZ);

 return elr;
}
