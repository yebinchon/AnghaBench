
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int i_ctime; int i_mtime; scalar_t__ i_size; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_4__ {int objectid; } ;
struct btrfs_root {TYPE_2__ root_key; TYPE_1__* fs_info; } ;
struct btrfs_path {int * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_3__ {int tree_root; } ;


 scalar_t__ BTRFS_ROOT_ITEM_KEY ;
 int CURRENT_TIME ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ IS_ERR_OR_NULL (struct btrfs_dir_item*) ;
 int PTR_ERR (struct btrfs_dir_item*) ;
 int WARN_ON (int) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_root_ref (struct btrfs_trans_handle*,int ,scalar_t__,int ,scalar_t__,scalar_t__*,char const*,int) ;
 int btrfs_delete_delayed_dir_index (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,scalar_t__) ;
 int btrfs_delete_one_dir_name (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_dir_item*) ;
 int btrfs_dir_item_key_to_cpu (struct extent_buffer*,struct btrfs_dir_item*,struct btrfs_key*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_i_size_write (struct inode*,scalar_t__) ;
 scalar_t__ btrfs_ino (struct inode*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int ) ;
 struct btrfs_dir_item* btrfs_lookup_dir_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,char const*,int,int) ;
 int btrfs_release_path (struct btrfs_path*) ;
 struct btrfs_dir_item* btrfs_search_dir_index_item (struct btrfs_root*,struct btrfs_path*,scalar_t__,char const*,int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int inode_inc_iversion (struct inode*) ;

int btrfs_unlink_subvol(struct btrfs_trans_handle *trans,
   struct btrfs_root *root,
   struct inode *dir, u64 objectid,
   const char *name, int name_len)
{
 struct btrfs_path *path;
 struct extent_buffer *leaf;
 struct btrfs_dir_item *di;
 struct btrfs_key key;
 u64 index;
 int ret;
 u64 dir_ino = btrfs_ino(dir);

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 di = btrfs_lookup_dir_item(trans, root, path, dir_ino,
       name, name_len, -1);
 if (IS_ERR_OR_NULL(di)) {
  if (!di)
   ret = -ENOENT;
  else
   ret = PTR_ERR(di);
  goto out;
 }

 leaf = path->nodes[0];
 btrfs_dir_item_key_to_cpu(leaf, di, &key);
 WARN_ON(key.type != BTRFS_ROOT_ITEM_KEY || key.objectid != objectid);
 ret = btrfs_delete_one_dir_name(trans, root, path, di);
 if (ret) {
  btrfs_abort_transaction(trans, root, ret);
  goto out;
 }
 btrfs_release_path(path);

 ret = btrfs_del_root_ref(trans, root->fs_info->tree_root,
     objectid, root->root_key.objectid,
     dir_ino, &index, name, name_len);
 if (ret < 0) {
  if (ret != -ENOENT) {
   btrfs_abort_transaction(trans, root, ret);
   goto out;
  }
  di = btrfs_search_dir_index_item(root, path, dir_ino,
       name, name_len);
  if (IS_ERR_OR_NULL(di)) {
   if (!di)
    ret = -ENOENT;
   else
    ret = PTR_ERR(di);
   btrfs_abort_transaction(trans, root, ret);
   goto out;
  }

  leaf = path->nodes[0];
  btrfs_item_key_to_cpu(leaf, &key, path->slots[0]);
  btrfs_release_path(path);
  index = key.offset;
 }
 btrfs_release_path(path);

 ret = btrfs_delete_delayed_dir_index(trans, root, dir, index);
 if (ret) {
  btrfs_abort_transaction(trans, root, ret);
  goto out;
 }

 btrfs_i_size_write(dir, dir->i_size - name_len * 2);
 inode_inc_iversion(dir);
 dir->i_mtime = dir->i_ctime = CURRENT_TIME;
 ret = btrfs_update_inode(trans, root, dir);
 if (ret)
  btrfs_abort_transaction(trans, root, ret);
out:
 btrfs_free_path(path);
 return ret;
}
