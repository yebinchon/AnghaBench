
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct page {TYPE_2__* mapping; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_mapping_tree {int dummy; } ;
struct bio {int bi_size; scalar_t__ bi_sector; } ;
struct TYPE_6__ {struct btrfs_root* root; } ;
struct TYPE_5__ {int host; } ;
struct TYPE_4__ {struct btrfs_mapping_tree mapping_tree; } ;


 TYPE_3__* BTRFS_I (int ) ;
 int BUG_ON (int) ;
 unsigned long EXTENT_BIO_COMPRESSED ;
 int READ ;
 int btrfs_map_block (struct btrfs_mapping_tree*,int ,int,int*,int *,int ) ;

int btrfs_merge_bio_hook(struct page *page, unsigned long offset,
    size_t size, struct bio *bio,
    unsigned long bio_flags)
{
 struct btrfs_root *root = BTRFS_I(page->mapping->host)->root;
 struct btrfs_mapping_tree *map_tree;
 u64 logical = (u64)bio->bi_sector << 9;
 u64 length = 0;
 u64 map_length;
 int ret;

 if (bio_flags & EXTENT_BIO_COMPRESSED)
  return 0;

 length = bio->bi_size;
 map_tree = &root->fs_info->mapping_tree;
 map_length = length;
 ret = btrfs_map_block(map_tree, READ, logical,
         &map_length, ((void*)0), 0);

 BUG_ON(ret < 0);
 if (map_length < length + size)
  return 1;
 return 0;
}
