
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;


 scalar_t__ btrfs_header_level (struct extent_buffer*) ;

__attribute__((used)) static inline int btrfs_is_leaf(struct extent_buffer *eb)
{
 return btrfs_header_level(eb) == 0;
}
