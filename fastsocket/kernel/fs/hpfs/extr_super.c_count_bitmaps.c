
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int sb_fs_size; int * sb_bmp_dir; } ;


 scalar_t__ hpfs_count_one_bitmap (struct super_block*,int ) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;

__attribute__((used)) static unsigned count_bitmaps(struct super_block *s)
{
 unsigned n, count, n_bands;
 n_bands = (hpfs_sb(s)->sb_fs_size + 0x3fff) >> 14;
 count = 0;
 for (n = 0; n < n_bands; n++)
  count += hpfs_count_one_bitmap(s, hpfs_sb(s)->sb_bmp_dir[n]);
 return count;
}
