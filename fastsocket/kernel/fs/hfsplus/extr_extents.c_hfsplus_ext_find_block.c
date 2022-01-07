
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfsplus_extent {int start_block; int block_count; } ;


 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static u32 hfsplus_ext_find_block(struct hfsplus_extent *ext, u32 off)
{
 int i;
 u32 count;

 for (i = 0; i < 8; ext++, i++) {
  count = be32_to_cpu(ext->block_count);
  if (off < count)
   return be32_to_cpu(ext->start_block) + off;
  off -= count;
 }

 return 0;
}
