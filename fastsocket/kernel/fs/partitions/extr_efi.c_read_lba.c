
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct block_device {int dummy; } ;
typedef int sector_t ;
typedef int Sector ;


 int bdev_logical_block_size (struct block_device*) ;
 int last_lba (struct block_device*) ;
 int memcpy (int *,unsigned char*,int) ;
 int put_dev_sector (int ) ;
 unsigned char* read_dev_sector (struct block_device*,int ,int *) ;

__attribute__((used)) static size_t
read_lba(struct block_device *bdev, u64 lba, u8 * buffer, size_t count)
{
 size_t totalreadcount = 0;
 sector_t n = lba * (bdev_logical_block_size(bdev) / 512);

 if (!bdev || !buffer || lba > last_lba(bdev))
                return 0;

 while (count) {
  int copied = 512;
  Sector sect;
  unsigned char *data = read_dev_sector(bdev, n++, &sect);
  if (!data)
   break;
  if (copied > count)
   copied = count;
  memcpy(buffer, data, copied);
  put_dev_sector(sect);
  buffer += copied;
  totalreadcount +=copied;
  count -= copied;
 }
 return totalreadcount;
}
