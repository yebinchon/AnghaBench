
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; int offset; } ;
struct TYPE_2__ {int index_cnt; struct btrfs_root* root; } ;


 scalar_t__ BTRFS_DIR_INDEX_KEY ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 scalar_t__ btrfs_ino (struct inode*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,scalar_t__) ;
 scalar_t__ btrfs_key_type (struct btrfs_key*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int btrfs_set_key_type (struct btrfs_key*,scalar_t__) ;

__attribute__((used)) static int btrfs_set_inode_index_count(struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_key key, found_key;
 struct btrfs_path *path;
 struct extent_buffer *leaf;
 int ret;

 key.objectid = btrfs_ino(inode);
 btrfs_set_key_type(&key, BTRFS_DIR_INDEX_KEY);
 key.offset = (u64)-1;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);
 if (ret < 0)
  goto out;

 if (ret == 0)
  goto out;
 ret = 0;







 if (path->slots[0] == 0) {
  BTRFS_I(inode)->index_cnt = 2;
  goto out;
 }

 path->slots[0]--;

 leaf = path->nodes[0];
 btrfs_item_key_to_cpu(leaf, &found_key, path->slots[0]);

 if (found_key.objectid != btrfs_ino(inode) ||
     btrfs_key_type(&found_key) != BTRFS_DIR_INDEX_KEY) {
  BTRFS_I(inode)->index_cnt = 2;
  goto out;
 }

 BTRFS_I(inode)->index_cnt = found_key.offset + 1;
out:
 btrfs_free_path(path);
 return ret;
}
