
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef int le16 ;
struct TYPE_3__ {int usa_count; int usa_ofs; } ;
typedef TYPE_1__ NTFS_RECORD ;


 int NTFS_BLOCK_SIZE ;
 int le16_to_cpu (int ) ;

void post_write_mst_fixup(NTFS_RECORD *b)
{
 le16 *usa_pos, *data_pos;

 u16 usa_ofs = le16_to_cpu(b->usa_ofs);
 u16 usa_count = le16_to_cpu(b->usa_count) - 1;


 usa_pos = (le16*)b + usa_ofs/sizeof(le16);


 data_pos = (le16*)b + NTFS_BLOCK_SIZE/sizeof(le16) - 1;


 while (usa_count--) {




  *data_pos = *(++usa_pos);


  data_pos += NTFS_BLOCK_SIZE/sizeof(le16);
 }
}
