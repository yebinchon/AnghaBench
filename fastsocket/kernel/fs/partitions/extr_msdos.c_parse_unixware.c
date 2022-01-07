
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unixware_slice {scalar_t__ s_label; int nr_sects; int start_sect; } ;
struct TYPE_2__ {struct unixware_slice* v_slice; int v_magic; } ;
struct unixware_disklabel {TYPE_1__ vtoc; int d_magic; } ;
struct parsed_partitions {scalar_t__ next; scalar_t__ limit; int name; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef int Sector ;


 scalar_t__ UNIXWARE_DISKMAGIC ;
 scalar_t__ UNIXWARE_DISKMAGIC2 ;
 scalar_t__ UNIXWARE_FS_UNUSED ;
 int UNIXWARE_NUMSLICE ;
 scalar_t__ le32_to_cpu (int ) ;
 int printk (char*,...) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ read_dev_sector (struct block_device*,scalar_t__,int *) ;

__attribute__((used)) static void
parse_unixware(struct parsed_partitions *state, struct block_device *bdev,
  sector_t offset, sector_t size, int origin)
{
}
