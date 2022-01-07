
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_item {int dummy; } ;


 int WARN_ON (int) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_end_nr (struct extent_buffer*,int) ;
 int btrfs_item_offset_nr (struct extent_buffer*,int) ;
 int min (int,int) ;

__attribute__((used)) static int leaf_space_used(struct extent_buffer *l, int start, int nr)
{
 int data_len;
 int nritems = btrfs_header_nritems(l);
 int end = min(nritems, start + nr) - 1;

 if (!nr)
  return 0;
 data_len = btrfs_item_end_nr(l, start);
 data_len = data_len - btrfs_item_offset_nr(l, end);
 data_len += sizeof(struct btrfs_item) * nr;
 WARN_ON(data_len < 0);
 return data_len;
}
