
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_file_extent_item {int dummy; } ;


 int btrfs_file_extent_ram_bytes (struct extent_buffer*,struct btrfs_file_extent_item*) ;

__attribute__((used)) static inline u32 btrfs_file_extent_inline_len(struct extent_buffer *eb,
            struct btrfs_file_extent_item *e)
{
 return btrfs_file_extent_ram_bytes(eb, e);
}
