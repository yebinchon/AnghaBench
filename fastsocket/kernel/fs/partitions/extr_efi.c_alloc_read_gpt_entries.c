
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct block_device {int dummy; } ;
struct TYPE_3__ {int partition_entry_lba; int sizeof_partition_entry; int num_partition_entries; } ;
typedef TYPE_1__ gpt_header ;
typedef int gpt_entry ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;
 size_t le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 size_t read_lba (struct block_device*,int ,int *,size_t) ;

__attribute__((used)) static gpt_entry *
alloc_read_gpt_entries(struct block_device *bdev, gpt_header *gpt)
{
 size_t count;
 gpt_entry *pte;
 if (!bdev || !gpt)
  return ((void*)0);

 count = le32_to_cpu(gpt->num_partition_entries) *
                le32_to_cpu(gpt->sizeof_partition_entry);
 if (!count)
  return ((void*)0);
 pte = kzalloc(count, GFP_KERNEL);
 if (!pte)
  return ((void*)0);

 if (read_lba(bdev, le64_to_cpu(gpt->partition_entry_lba),
                     (u8 *) pte,
       count) < count) {
  kfree(pte);
                pte=((void*)0);
  return ((void*)0);
 }
 return pte;
}
