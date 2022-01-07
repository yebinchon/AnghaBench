
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_ordered_extent {scalar_t__ file_offset; scalar_t__ len; } ;



__attribute__((used)) static u64 entry_end(struct btrfs_ordered_extent *entry)
{
 if (entry->file_offset + entry->len < entry->file_offset)
  return (u64)-1;
 return entry->file_offset + entry->len;
}
