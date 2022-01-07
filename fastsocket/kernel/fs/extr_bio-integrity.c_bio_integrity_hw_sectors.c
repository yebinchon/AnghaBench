
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {int sector_size; } ;



__attribute__((used)) static inline unsigned int bio_integrity_hw_sectors(struct blk_integrity *bi,
          unsigned int sectors)
{

 if (bi->sector_size == 4096)
  return sectors >>= 3;

 return sectors;
}
