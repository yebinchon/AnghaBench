
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_item {int dummy; } ;


 scalar_t__ btrfs_item_nr_offset (int) ;

__attribute__((used)) static inline struct btrfs_item *btrfs_item_nr(struct extent_buffer *eb,
            int nr)
{
 return (struct btrfs_item *)btrfs_item_nr_offset(nr);
}
