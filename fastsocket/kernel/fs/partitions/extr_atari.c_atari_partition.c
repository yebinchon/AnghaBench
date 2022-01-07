
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct rootsector {struct partition_info* icdpart; struct partition_info* part; } ;
struct partition_info {int flg; int siz; int st; int id; } ;
struct parsed_partitions {int limit; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_size; } ;
typedef int Sector ;


 scalar_t__ OK_id (int ) ;
 int VALID_PARTITION (struct partition_info*,int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int printk (char*,...) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int,int,int) ;
 scalar_t__ read_dev_sector (struct block_device*,int,int *) ;

int atari_partition(struct parsed_partitions *state, struct block_device *bdev)
{
 Sector sect;
 struct rootsector *rs;
 struct partition_info *pi;
 u32 extensect;
 u32 hd_size;
 int slot;




 rs = (struct rootsector *) read_dev_sector(bdev, 0, &sect);
 if (!rs)
  return -1;


 hd_size = bdev->bd_inode->i_size >> 9;
 if (!VALID_PARTITION(&rs->part[0], hd_size) &&
     !VALID_PARTITION(&rs->part[1], hd_size) &&
     !VALID_PARTITION(&rs->part[2], hd_size) &&
     !VALID_PARTITION(&rs->part[3], hd_size)) {





  put_dev_sector(sect);
  return 0;
 }

 pi = &rs->part[0];
 printk (" AHDI");
 for (slot = 1; pi < &rs->part[4] && slot < state->limit; slot++, pi++) {
  struct rootsector *xrs;
  Sector sect2;
  ulong partsect;

  if ( !(pi->flg & 1) )
   continue;

  if (memcmp (pi->id, "XGM", 3) != 0) {

   put_partition (state, slot, be32_to_cpu(pi->st),
     be32_to_cpu(pi->siz));
   continue;
  }




  printk(" XGM<");
  partsect = extensect = be32_to_cpu(pi->st);
  while (1) {
   xrs = (struct rootsector *)read_dev_sector(bdev, partsect, &sect2);
   if (!xrs) {
    printk (" block %ld read failed\n", partsect);
    put_dev_sector(sect);
    return -1;
   }


   if (!(xrs->part[0].flg & 1)) {
    printk( "\nFirst sub-partition in extended partition is not valid!\n" );
    put_dev_sector(sect2);
    break;
   }

   put_partition(state, slot,
       partsect + be32_to_cpu(xrs->part[0].st),
       be32_to_cpu(xrs->part[0].siz));

   if (!(xrs->part[1].flg & 1)) {

    put_dev_sector(sect2);
    break;
   }
   if (memcmp( xrs->part[1].id, "XGM", 3 ) != 0) {
    printk("\nID of extended partition is not XGM!\n");
    put_dev_sector(sect2);
    break;
   }

   partsect = be32_to_cpu(xrs->part[1].st) + extensect;
   put_dev_sector(sect2);
   if (++slot == state->limit) {
    printk( "\nMaximum number of partitions reached!\n" );
    break;
   }
  }
  printk(" >");
 }
 put_dev_sector(sect);

 printk ("\n");

 return 1;
}
