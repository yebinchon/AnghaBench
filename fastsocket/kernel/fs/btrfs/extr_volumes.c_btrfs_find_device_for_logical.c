
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_mapping_tree {int dummy; } ;
struct btrfs_device {int dummy; } ;
struct btrfs_bio {int mirror_num; TYPE_1__* stripes; } ;
struct TYPE_4__ {struct btrfs_mapping_tree mapping_tree; } ;
struct TYPE_3__ {struct btrfs_device* dev; } ;


 int BUG_ON (int) ;
 int WRITE ;
 int btrfs_map_block (struct btrfs_mapping_tree*,int ,int ,int *,struct btrfs_bio**,int) ;
 int kfree (struct btrfs_bio*) ;

struct btrfs_device *btrfs_find_device_for_logical(struct btrfs_root *root,
         u64 logical, int mirror_num)
{
 struct btrfs_mapping_tree *map_tree = &root->fs_info->mapping_tree;
 int ret;
 u64 map_length = 0;
 struct btrfs_bio *bbio = ((void*)0);
 struct btrfs_device *device;

 BUG_ON(mirror_num == 0);
 ret = btrfs_map_block(map_tree, WRITE, logical, &map_length, &bbio,
         mirror_num);
 if (ret) {
  BUG_ON(bbio != ((void*)0));
  return ((void*)0);
 }
 BUG_ON(mirror_num != bbio->mirror_num);
 device = bbio->stripes[mirror_num - 1].dev;
 kfree(bbio);
 return device;
}
