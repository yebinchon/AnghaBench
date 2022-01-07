
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int s_dirtyblocks_counter; } ;
struct ext4_attr {int dummy; } ;
typedef int ssize_t ;
typedef int s64 ;


 int PAGE_SIZE ;
 scalar_t__ percpu_counter_sum (int *) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t delayed_allocation_blocks_show(struct ext4_attr *a,
           struct ext4_sb_info *sbi,
           char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%llu\n",
   (s64) percpu_counter_sum(&sbi->s_dirtyblocks_counter));
}
