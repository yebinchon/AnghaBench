
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_path {int lowest_level; int* slots; int leave_spinning; struct extent_buffer** nodes; void** locks; scalar_t__ search_commit_root; } ;
struct btrfs_key {int dummy; } ;


 void* BTRFS_READ_LOCK ;
 int BUG_ON (int ) ;
 int EAGAIN ;
 int WARN_ON (int ) ;
 int bin_search (struct extent_buffer*,struct btrfs_key*,int,int*) ;
 int btrfs_clear_path_blocking (struct btrfs_path*,struct extent_buffer*,void*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int btrfs_set_path_blocking (struct btrfs_path*) ;
 int btrfs_tree_read_lock (struct extent_buffer*) ;
 int btrfs_tree_unlock_rw (struct extent_buffer*,void*) ;
 int btrfs_try_tree_read_lock (struct extent_buffer*) ;
 int btrfs_unlock_up_safe (struct btrfs_path*,int) ;
 struct extent_buffer* get_old_root (struct btrfs_root*,int ) ;
 int read_block_for_search (int *,struct btrfs_root*,struct btrfs_path*,struct extent_buffer**,int,int,struct btrfs_key*,int ) ;
 struct extent_buffer* tree_mod_log_rewind (int ,struct extent_buffer*,int ) ;
 int unlock_up (struct btrfs_path*,int,int,int ,int *) ;

int btrfs_search_old_slot(struct btrfs_root *root, struct btrfs_key *key,
     struct btrfs_path *p, u64 time_seq)
{
 struct extent_buffer *b;
 int slot;
 int ret;
 int err;
 int level;
 int lowest_unlock = 1;
 u8 lowest_level = 0;

 lowest_level = p->lowest_level;
 WARN_ON(p->nodes[0] != ((void*)0));

 if (p->search_commit_root) {
  BUG_ON(time_seq);
  return btrfs_search_slot(((void*)0), root, key, p, 0, 0);
 }

again:
 b = get_old_root(root, time_seq);
 level = btrfs_header_level(b);
 p->locks[level] = BTRFS_READ_LOCK;

 while (b) {
  level = btrfs_header_level(b);
  p->nodes[level] = b;
  btrfs_clear_path_blocking(p, ((void*)0), 0);







  btrfs_unlock_up_safe(p, level + 1);

  ret = bin_search(b, key, level, &slot);

  if (level != 0) {
   int dec = 0;
   if (ret && slot > 0) {
    dec = 1;
    slot -= 1;
   }
   p->slots[level] = slot;
   unlock_up(p, level, lowest_unlock, 0, ((void*)0));

   if (level == lowest_level) {
    if (dec)
     p->slots[level]++;
    goto done;
   }

   err = read_block_for_search(((void*)0), root, p, &b, level,
          slot, key, time_seq);
   if (err == -EAGAIN)
    goto again;
   if (err) {
    ret = err;
    goto done;
   }

   level = btrfs_header_level(b);
   err = btrfs_try_tree_read_lock(b);
   if (!err) {
    btrfs_set_path_blocking(p);
    btrfs_tree_read_lock(b);
    btrfs_clear_path_blocking(p, b,
         BTRFS_READ_LOCK);
   }
   p->locks[level] = BTRFS_READ_LOCK;
   p->nodes[level] = b;
   b = tree_mod_log_rewind(root->fs_info, b, time_seq);
   if (b != p->nodes[level]) {
    btrfs_tree_unlock_rw(p->nodes[level],
           p->locks[level]);
    p->locks[level] = 0;
    p->nodes[level] = b;
   }
  } else {
   p->slots[level] = slot;
   unlock_up(p, level, lowest_unlock, 0, ((void*)0));
   goto done;
  }
 }
 ret = 1;
done:
 if (!p->leave_spinning)
  btrfs_set_path_blocking(p);
 if (ret < 0)
  btrfs_release_path(p);

 return ret;
}
