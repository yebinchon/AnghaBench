
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int nr_to_write; int range_end; int range_start; int sync_mode; } ;
struct address_space {int nrpages; int host; } ;


 int WB_SYNC_ALL ;
 int generic_writepages (struct address_space*,struct writeback_control*) ;
 int i_size_read (int ) ;

__attribute__((used)) static int journal_submit_inode_data_buffers(struct address_space *mapping)
{
 int ret;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = mapping->nrpages * 2,
  .range_start = 0,
  .range_end = i_size_read(mapping->host),
 };

 ret = generic_writepages(mapping, &wbc);
 return ret;
}
