
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct block_device {int dummy; } ;
typedef int gpt_header ;


 int GFP_KERNEL ;
 unsigned int bdev_logical_block_size (struct block_device*) ;
 int kfree (int *) ;
 int * kzalloc (unsigned int,int ) ;
 unsigned int read_lba (struct block_device*,int ,int *,unsigned int) ;

__attribute__((used)) static gpt_header *
alloc_read_gpt_header(struct block_device *bdev, u64 lba)
{
 gpt_header *gpt;
 unsigned ssz = bdev_logical_block_size(bdev);

 if (!bdev)
  return ((void*)0);

 gpt = kzalloc(ssz, GFP_KERNEL);
 if (!gpt)
  return ((void*)0);

 if (read_lba(bdev, lba, (u8 *) gpt, ssz) < ssz) {
  kfree(gpt);
                gpt=((void*)0);
  return ((void*)0);
 }

 return gpt;
}
