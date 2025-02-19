
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; int hw_max_sectors; } ;
struct se_device {int queue_depth; TYPE_1__ dev_attrib; scalar_t__ export_count; } ;


 scalar_t__ sprintf (char*,char*,...) ;

void transport_dump_dev_state(
 struct se_device *dev,
 char *b,
 int *bl)
{
 *bl += sprintf(b + *bl, "Status: ");
 if (dev->export_count)
  *bl += sprintf(b + *bl, "ACTIVATED");
 else
  *bl += sprintf(b + *bl, "DEACTIVATED");

 *bl += sprintf(b + *bl, "  Max Queue Depth: %d", dev->queue_depth);
 *bl += sprintf(b + *bl, "  SectorSize: %u  HwMaxSectors: %u\n",
  dev->dev_attrib.block_size,
  dev->dev_attrib.hw_max_sectors);
 *bl += sprintf(b + *bl, "        ");
}
