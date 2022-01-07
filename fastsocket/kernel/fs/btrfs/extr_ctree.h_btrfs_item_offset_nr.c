
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extent_buffer {int dummy; } ;


 int btrfs_item_nr (struct extent_buffer*,int) ;
 int btrfs_item_offset (struct extent_buffer*,int ) ;

__attribute__((used)) static inline u32 btrfs_item_offset_nr(struct extent_buffer *eb, int nr)
{
 return btrfs_item_offset(eb, btrfs_item_nr(eb, nr));
}
