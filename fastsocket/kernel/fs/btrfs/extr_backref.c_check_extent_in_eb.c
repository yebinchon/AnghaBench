
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_inode_elem {scalar_t__ offset; int inum; struct extent_inode_elem* next; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int objectid; } ;
struct btrfs_file_extent_item {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ btrfs_file_extent_num_bytes (struct extent_buffer*,struct btrfs_file_extent_item*) ;
 scalar_t__ btrfs_file_extent_offset (struct extent_buffer*,struct btrfs_file_extent_item*) ;
 struct extent_inode_elem* kmalloc (int,int ) ;

__attribute__((used)) static int check_extent_in_eb(struct btrfs_key *key, struct extent_buffer *eb,
    struct btrfs_file_extent_item *fi,
    u64 extent_item_pos,
    struct extent_inode_elem **eie)
{
 u64 data_offset;
 u64 data_len;
 struct extent_inode_elem *e;

 data_offset = btrfs_file_extent_offset(eb, fi);
 data_len = btrfs_file_extent_num_bytes(eb, fi);

 if (extent_item_pos < data_offset ||
     extent_item_pos >= data_offset + data_len)
  return 1;

 e = kmalloc(sizeof(*e), GFP_NOFS);
 if (!e)
  return -ENOMEM;

 e->next = *eie;
 e->inum = key->objectid;
 e->offset = key->offset + (extent_item_pos - data_offset);
 *eie = e;

 return 0;
}
