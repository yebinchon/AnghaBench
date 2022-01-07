
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int dummy; } ;
struct ext4_attr {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ext4_reserve_blocks (struct ext4_sb_info*,unsigned long long) ;
 scalar_t__ parse_strtoull (char const*,unsigned long long,unsigned long long*) ;

__attribute__((used)) static ssize_t reserved_blocks_store(struct ext4_attr *a,
       struct ext4_sb_info *sbi,
       const char *buf, size_t count)
{
 unsigned long long val;
 int ret;

 if (parse_strtoull(buf, -1ULL, &val))
  return -EINVAL;
 ret = ext4_reserve_blocks(sbi, val);

 return ret ? ret : count;
}
