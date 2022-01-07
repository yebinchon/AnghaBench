
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slice {int nblocks; int blkoff; } ;
struct parsed_partitions {int limit; int name; } ;
struct TYPE_4__ {int ios_slcblk; int ios_slccnt; } ;
struct TYPE_3__ {int vid_mac; } ;
struct dkblk0 {TYPE_2__ dk_ios; TYPE_1__ dk_vid; } ;
struct block_device {int dummy; } ;
typedef int Sector ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int printk (char*,...) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int,int,int) ;
 unsigned char* read_dev_sector (struct block_device*,int,int *) ;

int sysv68_partition(struct parsed_partitions *state, struct block_device *bdev)
{
 int i, slices;
 int slot = 1;
 Sector sect;
 unsigned char *data;
 struct dkblk0 *b;
 struct slice *slice;

 data = read_dev_sector(bdev, 0, &sect);
 if (!data)
  return -1;

 b = (struct dkblk0 *)data;
 if (memcmp(b->dk_vid.vid_mac, "MOTOROLA", sizeof(b->dk_vid.vid_mac))) {
  put_dev_sector(sect);
  return 0;
 }
 slices = be16_to_cpu(b->dk_ios.ios_slccnt);
 i = be32_to_cpu(b->dk_ios.ios_slcblk);
 put_dev_sector(sect);

 data = read_dev_sector(bdev, i, &sect);
 if (!data)
  return -1;

 slices -= 1;
 printk("sysV68: %s(s%u)", state->name, slices);
 slice = (struct slice *)data;
 for (i = 0; i < slices; i++, slice++) {
  if (slot == state->limit)
   break;
  if (be32_to_cpu(slice->nblocks)) {
   put_partition(state, slot,
    be32_to_cpu(slice->blkoff),
    be32_to_cpu(slice->nblocks));
   printk("(s%u)", i);
  }
  slot++;
 }
 printk("\n");
 put_dev_sector(sect);
 return 1;
}
