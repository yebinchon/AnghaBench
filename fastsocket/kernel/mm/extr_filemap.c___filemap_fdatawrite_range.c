
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int sync_mode; int range_end; int range_start; int nr_to_write; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int LONG_MAX ;
 int do_writepages (struct address_space*,struct writeback_control*) ;
 int mapping_cap_writeback_dirty (struct address_space*) ;

int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
    loff_t end, int sync_mode)
{
 int ret;
 struct writeback_control wbc = {
  .sync_mode = sync_mode,
  .nr_to_write = LONG_MAX,
  .range_start = start,
  .range_end = end,
 };

 if (!mapping_cap_writeback_dirty(mapping))
  return 0;

 ret = do_writepages(mapping, &wbc);
 return ret;
}
