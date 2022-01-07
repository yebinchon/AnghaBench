
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {struct extent_buffer** nodes; scalar_t__ search_for_split; } ;


 int BTRFS_NODEPTRS_PER_BLOCK (struct btrfs_root*) ;
 int BUG_ON (int) ;
 int EAGAIN ;
 int balance_level (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ;
 int btrfs_clear_path_blocking (struct btrfs_path*,int *,int ) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_set_path_blocking (struct btrfs_path*) ;
 int reada_for_balance (struct btrfs_root*,struct btrfs_path*,int) ;
 int split_node (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ;

__attribute__((used)) static int
setup_nodes_for_search(struct btrfs_trans_handle *trans,
         struct btrfs_root *root, struct btrfs_path *p,
         struct extent_buffer *b, int level, int ins_len,
         int *write_lock_level)
{
 int ret;
 if ((p->search_for_split || ins_len > 0) && btrfs_header_nritems(b) >=
     BTRFS_NODEPTRS_PER_BLOCK(root) - 3) {
  int sret;

  if (*write_lock_level < level + 1) {
   *write_lock_level = level + 1;
   btrfs_release_path(p);
   goto again;
  }

  sret = reada_for_balance(root, p, level);
  if (sret)
   goto again;

  btrfs_set_path_blocking(p);
  sret = split_node(trans, root, p, level);
  btrfs_clear_path_blocking(p, ((void*)0), 0);

  BUG_ON(sret > 0);
  if (sret) {
   ret = sret;
   goto done;
  }
  b = p->nodes[level];
 } else if (ins_len < 0 && btrfs_header_nritems(b) <
     BTRFS_NODEPTRS_PER_BLOCK(root) / 2) {
  int sret;

  if (*write_lock_level < level + 1) {
   *write_lock_level = level + 1;
   btrfs_release_path(p);
   goto again;
  }

  sret = reada_for_balance(root, p, level);
  if (sret)
   goto again;

  btrfs_set_path_blocking(p);
  sret = balance_level(trans, root, p, level);
  btrfs_clear_path_blocking(p, ((void*)0), 0);

  if (sret) {
   ret = sret;
   goto done;
  }
  b = p->nodes[level];
  if (!b) {
   btrfs_release_path(p);
   goto again;
  }
  BUG_ON(btrfs_header_nritems(b) == 1);
 }
 return 0;

again:
 ret = -EAGAIN;
done:
 return ret;
}
