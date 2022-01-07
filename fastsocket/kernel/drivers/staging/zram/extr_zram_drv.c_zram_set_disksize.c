
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {size_t disksize; } ;


 int PAGE_MASK ;
 size_t default_disksize_perc_ram ;
 int pr_info (char*,size_t,...) ;

__attribute__((used)) static void zram_set_disksize(struct zram *zram, size_t totalram_bytes)
{
 if (!zram->disksize) {
  pr_info(
  "disk size not provided. You can use disksize_kb module "
  "param to specify size.\nUsing default: (%u%% of RAM).\n",
  default_disksize_perc_ram
  );
  zram->disksize = default_disksize_perc_ram *
     (totalram_bytes / 100);
 }

 if (zram->disksize > 2 * (totalram_bytes)) {
  pr_info(
  "There is little point creating a zram of greater than "
  "twice the size of memory since we expect a 2:1 compression "
  "ratio. Note that zram uses about 0.1%% of the size of "
  "the disk when not in use so a huge zram is "
  "wasteful.\n"
  "\tMemory Size: %zu kB\n"
  "\tSize you selected: %llu kB\n"
  "Continuing anyway ...\n",
  totalram_bytes >> 10, zram->disksize
  );
 }

 zram->disksize &= PAGE_MASK;
}
