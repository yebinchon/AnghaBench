
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef int u32 ;
struct parsed_partitions {int limit; TYPE_1__* parts; } ;
struct block_device {int dummy; } ;
struct TYPE_9__ {int partition_type_guid; int starting_lba; int ending_lba; int num_partition_entries; } ;
typedef TYPE_2__ gpt_header ;
typedef TYPE_2__ gpt_entry ;
struct TYPE_8__ {int flags; } ;


 int PARTITION_LINUX_RAID_GUID ;
 int bdev_logical_block_size (struct block_device*) ;
 int efi_guidcmp (int ,int ) ;
 int find_valid_gpt (struct block_device*,TYPE_2__**,TYPE_2__**) ;
 int is_pte_valid (TYPE_2__*,int ) ;
 int kfree (TYPE_2__*) ;
 int last_lba (struct block_device*) ;
 int le32_to_cpu (int ) ;
 unsigned int le64_to_cpu (int ) ;
 int pr_debug (char*) ;
 int printk (char*) ;
 int put_partition (struct parsed_partitions*,int,unsigned int,unsigned int) ;

int
efi_partition(struct parsed_partitions *state, struct block_device *bdev)
{
 gpt_header *gpt = ((void*)0);
 gpt_entry *ptes = ((void*)0);
 u32 i;
 unsigned ssz = bdev_logical_block_size(bdev) / 512;

 if (!find_valid_gpt(bdev, &gpt, &ptes) || !gpt || !ptes) {
  kfree(gpt);
  kfree(ptes);
  return 0;
 }

 pr_debug("GUID Partition Table is valid!  Yea!\n");

 for (i = 0; i < le32_to_cpu(gpt->num_partition_entries) && i < state->limit-1; i++) {
  u64 start = le64_to_cpu(ptes[i].starting_lba);
  u64 size = le64_to_cpu(ptes[i].ending_lba) -
      le64_to_cpu(ptes[i].starting_lba) + 1ULL;

  if (!is_pte_valid(&ptes[i], last_lba(bdev)))
   continue;

  put_partition(state, i+1, start * ssz, size * ssz);


  if (!efi_guidcmp(ptes[i].partition_type_guid,
     PARTITION_LINUX_RAID_GUID))
   state->parts[i+1].flags = 1;
 }
 kfree(ptes);
 kfree(gpt);
 printk("\n");
 return 1;
}
