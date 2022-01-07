
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsplus_extent {int block_count; int start_block; } ;


 int DBG_EXTENT ;
 int be32_to_cpu (int ) ;
 int dprint (int ,char*,...) ;

__attribute__((used)) static void hfsplus_dump_extent(struct hfsplus_extent *extent)
{
 int i;

 dprint(DBG_EXTENT, "   ");
 for (i = 0; i < 8; i++)
  dprint(DBG_EXTENT, " %u:%u", be32_to_cpu(extent[i].start_block),
     be32_to_cpu(extent[i].block_count));
 dprint(DBG_EXTENT, "\n");
}
