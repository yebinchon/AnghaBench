
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_item {int dummy; } ;


 scalar_t__ btrfs_item_offset (struct extent_buffer*,struct btrfs_item*) ;
 scalar_t__ btrfs_item_size (struct extent_buffer*,struct btrfs_item*) ;

__attribute__((used)) static inline u32 btrfs_item_end(struct extent_buffer *eb,
     struct btrfs_item *item)
{
 return btrfs_item_offset(eb, item) + btrfs_item_size(eb, item);
}
