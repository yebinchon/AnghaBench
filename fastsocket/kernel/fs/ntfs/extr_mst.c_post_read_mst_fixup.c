
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int usa_count; int magic; int usa_ofs; } ;
typedef TYPE_1__ NTFS_RECORD ;


 int EINVAL ;
 int NTFS_BLOCK_SIZE ;
 int const NTFS_BLOCK_SIZE_BITS ;
 int le16_to_cpu (int ) ;
 int magic_BAAD ;

int post_read_mst_fixup(NTFS_RECORD *b, const u32 size)
{
 u16 usa_ofs, usa_count, usn;
 u16 *usa_pos, *data_pos;


 usa_ofs = le16_to_cpu(b->usa_ofs);

 usa_count = le16_to_cpu(b->usa_count) - 1;

 if ( size & (NTFS_BLOCK_SIZE - 1) ||
      usa_ofs & 1 ||
      usa_ofs + (usa_count * 2) > size ||
      (size >> NTFS_BLOCK_SIZE_BITS) != usa_count)
  return 0;

 usa_pos = (u16*)b + usa_ofs/sizeof(u16);







 usn = *usa_pos;



 data_pos = (u16*)b + NTFS_BLOCK_SIZE/sizeof(u16) - 1;



 while (usa_count--) {
  if (*data_pos != usn) {





   b->magic = magic_BAAD;
   return -EINVAL;
  }
  data_pos += NTFS_BLOCK_SIZE/sizeof(u16);
 }

 usa_count = le16_to_cpu(b->usa_count) - 1;
 data_pos = (u16*)b + NTFS_BLOCK_SIZE/sizeof(u16) - 1;

 while (usa_count--) {




  *data_pos = *(++usa_pos);

  data_pos += NTFS_BLOCK_SIZE/sizeof(u16);
 }
 return 0;
}
