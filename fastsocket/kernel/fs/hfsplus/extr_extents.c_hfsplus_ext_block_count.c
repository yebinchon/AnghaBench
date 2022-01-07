
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfsplus_extent {int block_count; } ;


 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static int hfsplus_ext_block_count(struct hfsplus_extent *ext)
{
 int i;
 u32 count = 0;

 for (i = 0; i < 8; ext++, i++)
  count += be32_to_cpu(ext->block_count);
 return count;
}
