
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;


 int unmap_underlying_metadata (struct block_device*,scalar_t__) ;

__attribute__((used)) static void unmap_underlying_metadata_blocks(struct block_device *bdev,
   sector_t block, int count)
{
 int i;
 for (i = 0; i < count; i++)
                unmap_underlying_metadata(bdev, block + i);
}
