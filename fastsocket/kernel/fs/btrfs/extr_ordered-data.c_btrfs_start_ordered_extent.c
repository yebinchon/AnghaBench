
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_mapping; } ;
struct btrfs_ordered_extent {int flags; int wait; scalar_t__ len; scalar_t__ file_offset; } ;


 int BTRFS_ORDERED_COMPLETE ;
 int BTRFS_ORDERED_DIRECT ;
 int filemap_fdatawrite_range (int ,scalar_t__,scalar_t__) ;
 int test_bit (int ,int *) ;
 int trace_btrfs_ordered_extent_start (struct inode*,struct btrfs_ordered_extent*) ;
 int wait_event (int ,int ) ;

void btrfs_start_ordered_extent(struct inode *inode,
           struct btrfs_ordered_extent *entry,
           int wait)
{
 u64 start = entry->file_offset;
 u64 end = start + entry->len - 1;

 trace_btrfs_ordered_extent_start(inode, entry);






 if (!test_bit(BTRFS_ORDERED_DIRECT, &entry->flags))
  filemap_fdatawrite_range(inode->i_mapping, start, end);
 if (wait) {
  wait_event(entry->wait, test_bit(BTRFS_ORDERED_COMPLETE,
       &entry->flags));
 }
}
