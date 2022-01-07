
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int le16 ;
struct TYPE_3__ {int usa_count; int usa_ofs; int magic; } ;
typedef TYPE_1__ NTFS_RECORD ;


 int EINVAL ;
 int NTFS_BLOCK_SIZE ;
 int const NTFS_BLOCK_SIZE_BITS ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int le16_to_cpup (int *) ;
 scalar_t__ ntfs_is_baad_record (int ) ;
 scalar_t__ ntfs_is_hole_record (int ) ;

int pre_write_mst_fixup(NTFS_RECORD *b, const u32 size)
{
 le16 *usa_pos, *data_pos;
 u16 usa_ofs, usa_count, usn;
 le16 le_usn;


 if (!b || ntfs_is_baad_record(b->magic) ||
   ntfs_is_hole_record(b->magic))
  return -EINVAL;

 usa_ofs = le16_to_cpu(b->usa_ofs);

 usa_count = le16_to_cpu(b->usa_count) - 1;

 if ( size & (NTFS_BLOCK_SIZE - 1) ||
      usa_ofs & 1 ||
      usa_ofs + (usa_count * 2) > size ||
      (size >> NTFS_BLOCK_SIZE_BITS) != usa_count)
  return -EINVAL;

 usa_pos = (le16*)((u8*)b + usa_ofs);




 usn = le16_to_cpup(usa_pos) + 1;
 if (usn == 0xffff || !usn)
  usn = 1;
 le_usn = cpu_to_le16(usn);
 *usa_pos = le_usn;

 data_pos = (le16*)b + NTFS_BLOCK_SIZE/sizeof(le16) - 1;

 while (usa_count--) {




  *(++usa_pos) = *data_pos;

  *data_pos = le_usn;

  data_pos += NTFS_BLOCK_SIZE/sizeof(le16);
 }
 return 0;
}
