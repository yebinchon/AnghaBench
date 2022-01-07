
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfs_extent {int block; int count; } ;


 scalar_t__ be16_to_cpu (int ) ;

__attribute__((used)) static u16 hfs_ext_find_block(struct hfs_extent *ext, u16 off)
{
 int i;
 u16 count;

 for (i = 0; i < 3; ext++, i++) {
  count = be16_to_cpu(ext->count);
  if (off < count)
   return be16_to_cpu(ext->block) + off;
  off -= count;
 }

 return 0;
}
