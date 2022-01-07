
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ulist {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_NOFS ;
 int find_parent_nodes (struct btrfs_trans_handle*,struct btrfs_fs_info*,int ,int ,int ,struct ulist*,struct ulist*,int const*) ;
 int free_leaf_list (struct ulist*) ;
 struct ulist* ulist_alloc (int ) ;
 int ulist_free (struct ulist*) ;

__attribute__((used)) static int btrfs_find_all_leafs(struct btrfs_trans_handle *trans,
    struct btrfs_fs_info *fs_info, u64 bytenr,
    u64 delayed_ref_seq, u64 time_seq,
    struct ulist **leafs,
    const u64 *extent_item_pos)
{
 struct ulist *tmp;
 int ret;

 tmp = ulist_alloc(GFP_NOFS);
 if (!tmp)
  return -ENOMEM;
 *leafs = ulist_alloc(GFP_NOFS);
 if (!*leafs) {
  ulist_free(tmp);
  return -ENOMEM;
 }

 ret = find_parent_nodes(trans, fs_info, bytenr, delayed_ref_seq,
    time_seq, *leafs, tmp, extent_item_pos);
 ulist_free(tmp);

 if (ret < 0 && ret != -ENOENT) {
  free_leaf_list(*leafs);
  return ret;
 }

 return 0;
}
