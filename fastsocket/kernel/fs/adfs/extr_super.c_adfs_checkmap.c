
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct adfs_discmap {TYPE_1__* dm_bh; } ;
struct TYPE_4__ {int s_map_size; } ;
struct TYPE_3__ {unsigned char* b_data; } ;


 TYPE_2__* ADFS_SB (struct super_block*) ;
 unsigned char adfs_calczonecheck (struct super_block*,unsigned char*) ;
 int adfs_error (struct super_block*,char*,...) ;

__attribute__((used)) static int adfs_checkmap(struct super_block *sb, struct adfs_discmap *dm)
{
 unsigned char crosscheck = 0, zonecheck = 1;
 int i;

 for (i = 0; i < ADFS_SB(sb)->s_map_size; i++) {
  unsigned char *map;

  map = dm[i].dm_bh->b_data;

  if (adfs_calczonecheck(sb, map) != map[0]) {
   adfs_error(sb, "zone %d fails zonecheck", i);
   zonecheck = 0;
  }
  crosscheck ^= map[3];
 }
 if (crosscheck != 0xff)
  adfs_error(sb, "crosscheck != 0xff");
 return crosscheck == 0xff && zonecheck;
}
