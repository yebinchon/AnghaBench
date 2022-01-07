
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minix_sb_info {unsigned long s_log_zone_size; scalar_t__ s_firstdatazone; scalar_t__ s_nzones; int s_zmap_blocks; int s_zmap; } ;


 unsigned long count_free (int ,int ,scalar_t__) ;

unsigned long minix_count_free_blocks(struct minix_sb_info *sbi)
{
 return (count_free(sbi->s_zmap, sbi->s_zmap_blocks,
  sbi->s_nzones - sbi->s_firstdatazone + 1)
  << sbi->s_log_zone_size);
}
