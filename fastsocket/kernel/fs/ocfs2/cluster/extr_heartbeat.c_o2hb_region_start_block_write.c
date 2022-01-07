
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {unsigned long long hr_start_block; scalar_t__ hr_bdev; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long long simple_strtoull (char*,char**,int ) ;

__attribute__((used)) static ssize_t o2hb_region_start_block_write(struct o2hb_region *reg,
          const char *page,
          size_t count)
{
 unsigned long long tmp;
 char *p = (char *)page;

 if (reg->hr_bdev)
  return -EINVAL;

 tmp = simple_strtoull(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 reg->hr_start_block = tmp;

 return count;
}
