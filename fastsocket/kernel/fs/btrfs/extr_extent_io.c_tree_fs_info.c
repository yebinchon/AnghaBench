
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct extent_io_tree {TYPE_2__* mapping; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int i_sb; } ;


 struct btrfs_fs_info* btrfs_sb (int ) ;

__attribute__((used)) static inline struct btrfs_fs_info *
tree_fs_info(struct extent_io_tree *tree)
{
 return btrfs_sb(tree->mapping->host->i_sb);
}
