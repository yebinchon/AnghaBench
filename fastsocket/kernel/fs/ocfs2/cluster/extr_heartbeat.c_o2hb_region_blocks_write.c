
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {unsigned int hr_blocks; scalar_t__ hr_bdev; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ERANGE ;
 unsigned long O2NM_MAX_NODES ;
 unsigned long simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static ssize_t o2hb_region_blocks_write(struct o2hb_region *reg,
     const char *page,
     size_t count)
{
 unsigned long tmp;
 char *p = (char *)page;

 if (reg->hr_bdev)
  return -EINVAL;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp > O2NM_MAX_NODES || tmp == 0)
  return -ERANGE;

 reg->hr_blocks = (unsigned int)tmp;

 return count;
}
