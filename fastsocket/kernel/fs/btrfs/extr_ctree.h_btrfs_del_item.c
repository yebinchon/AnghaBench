
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; } ;


 int btrfs_del_items (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int ,int) ;

__attribute__((used)) static inline int btrfs_del_item(struct btrfs_trans_handle *trans,
     struct btrfs_root *root,
     struct btrfs_path *path)
{
 return btrfs_del_items(trans, root, path, path->slots[0], 1);
}
