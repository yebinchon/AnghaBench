
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct block_device {int dummy; } ;
struct TYPE_9__ {int partition_entry_array_crc32; int sizeof_partition_entry; int num_partition_entries; int last_usable_lba; int first_usable_lba; int my_lba; int header_crc32; int header_size; int signature; } ;
typedef TYPE_1__ gpt_header ;
typedef TYPE_1__ gpt_entry ;


 scalar_t__ GPT_HEADER_SIGNATURE ;
 TYPE_1__* alloc_read_gpt_entries (struct block_device*,TYPE_1__*) ;
 TYPE_1__* alloc_read_gpt_header (struct block_device*,scalar_t__) ;
 int bdev_logical_block_size (struct block_device*) ;
 int cpu_to_le32 (int) ;
 int efi_crc32 (unsigned char const*,int) ;
 int kfree (TYPE_1__*) ;
 scalar_t__ last_lba (struct block_device*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int
is_gpt_valid(struct block_device *bdev, u64 lba,
      gpt_header **gpt, gpt_entry **ptes)
{
 u32 crc, origcrc;
 u64 lastlba;

 if (!bdev || !gpt || !ptes)
  return 0;
 if (!(*gpt = alloc_read_gpt_header(bdev, lba)))
  return 0;


 if (le64_to_cpu((*gpt)->signature) != GPT_HEADER_SIGNATURE) {
  pr_debug("GUID Partition Table Header signature is wrong:"
    "%lld != %lld\n",
    (unsigned long long)le64_to_cpu((*gpt)->signature),
    (unsigned long long)GPT_HEADER_SIGNATURE);
  goto fail;
 }


 if (le32_to_cpu((*gpt)->header_size) >
   bdev_logical_block_size(bdev)) {
  pr_debug("GUID Partition Table Header size is wrong: %u > %u\n",
   le32_to_cpu((*gpt)->header_size),
   bdev_logical_block_size(bdev));
  goto fail;
 }


 origcrc = le32_to_cpu((*gpt)->header_crc32);
 (*gpt)->header_crc32 = 0;
 crc = efi_crc32((const unsigned char *) (*gpt), le32_to_cpu((*gpt)->header_size));

 if (crc != origcrc) {
  pr_debug("GUID Partition Table Header CRC is wrong: %x != %x\n",
    crc, origcrc);
  goto fail;
 }
 (*gpt)->header_crc32 = cpu_to_le32(origcrc);



 if (le64_to_cpu((*gpt)->my_lba) != lba) {
  pr_debug("GPT my_lba incorrect: %lld != %lld\n",
    (unsigned long long)le64_to_cpu((*gpt)->my_lba),
    (unsigned long long)lba);
  goto fail;
 }




 lastlba = last_lba(bdev);
 if (le64_to_cpu((*gpt)->first_usable_lba) > lastlba) {
  pr_debug("GPT: first_usable_lba incorrect: %lld > %lld\n",
    (unsigned long long)le64_to_cpu((*gpt)->first_usable_lba),
    (unsigned long long)lastlba);
  goto fail;
 }
 if (le64_to_cpu((*gpt)->last_usable_lba) > lastlba) {
  pr_debug("GPT: last_usable_lba incorrect: %lld > %lld\n",
    (unsigned long long)le64_to_cpu((*gpt)->last_usable_lba),
    (unsigned long long)lastlba);
  goto fail;
 }


 if (le32_to_cpu((*gpt)->sizeof_partition_entry) != sizeof(gpt_entry)) {
   pr_debug("GUID Partitition Entry Size check failed.\n");
   goto fail;
 }

 if (!(*ptes = alloc_read_gpt_entries(bdev, *gpt)))
  goto fail;


 crc = efi_crc32((const unsigned char *) (*ptes),
   le32_to_cpu((*gpt)->num_partition_entries) *
   le32_to_cpu((*gpt)->sizeof_partition_entry));

 if (crc != le32_to_cpu((*gpt)->partition_entry_array_crc32)) {
  pr_debug("GUID Partitition Entry Array CRC check failed.\n");
  goto fail_ptes;
 }


 return 1;

 fail_ptes:
 kfree(*ptes);
 *ptes = ((void*)0);
 fail:
 kfree(*gpt);
 *gpt = ((void*)0);
 return 0;
}
