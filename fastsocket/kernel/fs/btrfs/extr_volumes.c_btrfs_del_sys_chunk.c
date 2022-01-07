
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct btrfs_super_block {int * sys_chunk_array; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_chunk {int dummy; } ;
struct TYPE_2__ {struct btrfs_super_block* super_copy; } ;


 scalar_t__ BTRFS_CHUNK_ITEM_KEY ;
 int EIO ;
 scalar_t__ btrfs_chunk_item_size (scalar_t__) ;
 int btrfs_disk_key_to_cpu (struct btrfs_key*,struct btrfs_disk_key*) ;
 int btrfs_set_super_sys_array_size (struct btrfs_super_block*,scalar_t__) ;
 scalar_t__ btrfs_stack_chunk_num_stripes (struct btrfs_chunk*) ;
 scalar_t__ btrfs_super_sys_array_size (struct btrfs_super_block*) ;
 int memmove (int *,int *,scalar_t__) ;

__attribute__((used)) static int btrfs_del_sys_chunk(struct btrfs_root *root, u64 chunk_objectid, u64
   chunk_offset)
{
 struct btrfs_super_block *super_copy = root->fs_info->super_copy;
 struct btrfs_disk_key *disk_key;
 struct btrfs_chunk *chunk;
 u8 *ptr;
 int ret = 0;
 u32 num_stripes;
 u32 array_size;
 u32 len = 0;
 u32 cur;
 struct btrfs_key key;

 array_size = btrfs_super_sys_array_size(super_copy);

 ptr = super_copy->sys_chunk_array;
 cur = 0;

 while (cur < array_size) {
  disk_key = (struct btrfs_disk_key *)ptr;
  btrfs_disk_key_to_cpu(&key, disk_key);

  len = sizeof(*disk_key);

  if (key.type == BTRFS_CHUNK_ITEM_KEY) {
   chunk = (struct btrfs_chunk *)(ptr + len);
   num_stripes = btrfs_stack_chunk_num_stripes(chunk);
   len += btrfs_chunk_item_size(num_stripes);
  } else {
   ret = -EIO;
   break;
  }
  if (key.objectid == chunk_objectid &&
      key.offset == chunk_offset) {
   memmove(ptr, ptr + len, array_size - (cur + len));
   array_size -= len;
   btrfs_set_super_sys_array_size(super_copy, array_size);
  } else {
   ptr += len;
   cur += len;
  }
 }
 return ret;
}
