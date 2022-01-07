
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__ reada; } ;
struct btrfs_key {int objectid; } ;


 int EAGAIN ;
 int EIO ;
 scalar_t__ btrfs_buffer_uptodate (struct extent_buffer*,int ,int) ;
 struct extent_buffer* btrfs_find_tree_block (struct btrfs_root*,int ,int ) ;
 int btrfs_level_size (struct btrfs_root*,int) ;
 int btrfs_node_blockptr (struct extent_buffer*,int) ;
 int btrfs_node_ptr_generation (struct extent_buffer*,int) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_set_path_blocking (struct btrfs_path*) ;
 int btrfs_unlock_up_safe (struct btrfs_path*,int) ;
 int free_extent_buffer (struct extent_buffer*) ;
 struct extent_buffer* read_tree_block (struct btrfs_root*,int ,int ,int ) ;
 int reada_for_search (struct btrfs_root*,struct btrfs_path*,int,int,int ) ;

__attribute__((used)) static int
read_block_for_search(struct btrfs_trans_handle *trans,
         struct btrfs_root *root, struct btrfs_path *p,
         struct extent_buffer **eb_ret, int level, int slot,
         struct btrfs_key *key, u64 time_seq)
{
 u64 blocknr;
 u64 gen;
 u32 blocksize;
 struct extent_buffer *b = *eb_ret;
 struct extent_buffer *tmp;
 int ret;

 blocknr = btrfs_node_blockptr(b, slot);
 gen = btrfs_node_ptr_generation(b, slot);
 blocksize = btrfs_level_size(root, level - 1);

 tmp = btrfs_find_tree_block(root, blocknr, blocksize);
 if (tmp) {

  if (btrfs_buffer_uptodate(tmp, 0, 1) > 0) {
   if (btrfs_buffer_uptodate(tmp, gen, 1) > 0) {





    *eb_ret = tmp;
    return 0;
   }






   free_extent_buffer(tmp);
   btrfs_set_path_blocking(p);


   tmp = read_tree_block(root, blocknr, blocksize, gen);
   if (tmp && btrfs_buffer_uptodate(tmp, gen, 0) > 0) {
    *eb_ret = tmp;
    return 0;
   }
   free_extent_buffer(tmp);
   btrfs_release_path(p);
   return -EIO;
  }
 }
 btrfs_unlock_up_safe(p, level + 1);
 btrfs_set_path_blocking(p);

 free_extent_buffer(tmp);
 if (p->reada)
  reada_for_search(root, p, level, slot, key->objectid);

 btrfs_release_path(p);

 ret = -EAGAIN;
 tmp = read_tree_block(root, blocknr, blocksize, 0);
 if (tmp) {






  if (!btrfs_buffer_uptodate(tmp, 0, 0))
   ret = -EIO;
  free_extent_buffer(tmp);
 }
 return ret;
}
