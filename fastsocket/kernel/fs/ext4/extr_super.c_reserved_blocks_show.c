
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int s_resv_blocks; } ;
struct ext4_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ atomic64_read (int *) ;
 int snprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t reserved_blocks_show(struct ext4_attr *a,
      struct ext4_sb_info *sbi, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%llu\n",
  (unsigned long long) atomic64_read(&sbi->s_resv_blocks));
}
