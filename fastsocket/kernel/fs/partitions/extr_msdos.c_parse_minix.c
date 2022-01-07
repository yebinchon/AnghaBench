
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {int dummy; } ;
struct parsed_partitions {scalar_t__ next; scalar_t__ limit; int name; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
typedef int Sector ;


 int MINIX_NR_SUBPARTITIONS ;
 scalar_t__ MINIX_PARTITION ;
 scalar_t__ SYS_IND (struct partition*) ;
 scalar_t__ msdos_magic_present (unsigned char*) ;
 int nr_sects (struct partition*) ;
 int printk (char*,...) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int ,int ,int ) ;
 unsigned char* read_dev_sector (struct block_device*,int ,int *) ;
 int start_sect (struct partition*) ;

__attribute__((used)) static void
parse_minix(struct parsed_partitions *state, struct block_device *bdev,
  sector_t offset, sector_t size, int origin)
{
}
