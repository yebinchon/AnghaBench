
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_extent {int count; int block; } ;


 int DBG_EXTENT ;
 int be16_to_cpu (int ) ;
 int dprint (int ,char*,...) ;

__attribute__((used)) static void hfs_dump_extent(struct hfs_extent *extent)
{
 int i;

 dprint(DBG_EXTENT, "   ");
 for (i = 0; i < 3; i++)
  dprint(DBG_EXTENT, " %u:%u", be16_to_cpu(extent[i].block),
     be16_to_cpu(extent[i].count));
 dprint(DBG_EXTENT, "\n");
}
