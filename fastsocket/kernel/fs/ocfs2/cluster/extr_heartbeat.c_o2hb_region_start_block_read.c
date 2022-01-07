
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_start_block; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t o2hb_region_start_block_read(struct o2hb_region *reg,
         char *page)
{
 return sprintf(page, "%llu\n", reg->hr_start_block);
}
