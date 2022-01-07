
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int i_mode; int i_count; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct btrfs_trans_handle {int * block_rsv; int bytes_reserved; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_path {int skip_locking; int search_commit_root; int * nodes; } ;
struct btrfs_inode_ref {int * block_rsv; int bytes_reserved; } ;
struct btrfs_dir_item {int * block_rsv; int bytes_reserved; } ;
struct TYPE_6__ {int location; struct btrfs_root* root; } ;
struct TYPE_5__ {int global_block_rsv; scalar_t__ enospc_unlink; } ;


 scalar_t__ BTRFS_EMPTY_SUBVOL_DIR_OBJECTID ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int BUG_ON (int) ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 struct btrfs_trans_handle* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int atomic_read (int *) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_block_rsv_migrate (int *,int *,int ) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 scalar_t__ btrfs_ino (struct inode*) ;
 scalar_t__ btrfs_inode_ref_index (int ,struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_lookup_dir_index_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,scalar_t__,int ,int ,int ) ;
 struct btrfs_trans_handle* btrfs_lookup_dir_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,int ,int ,int ) ;
 int btrfs_lookup_file_extent (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,scalar_t__,int ) ;
 int btrfs_lookup_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int *,int ) ;
 struct btrfs_trans_handle* btrfs_lookup_inode_ref (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int ,int ,scalar_t__,scalar_t__,int ) ;
 int btrfs_release_path (struct btrfs_path*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 scalar_t__ check_path_shared (struct btrfs_root*,struct btrfs_path*) ;
 scalar_t__ xchg (scalar_t__*,int) ;

__attribute__((used)) static struct btrfs_trans_handle *__unlink_start_trans(struct inode *dir,
             struct dentry *dentry)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct btrfs_path *path;
 struct btrfs_inode_ref *ref;
 struct btrfs_dir_item *di;
 struct inode *inode = dentry->d_inode;
 u64 index;
 int check_link = 1;
 int err = -ENOSPC;
 int ret;
 u64 ino = btrfs_ino(inode);
 u64 dir_ino = btrfs_ino(dir);
 trans = btrfs_start_transaction(root, 8);
 if (!IS_ERR(trans) || PTR_ERR(trans) != -ENOSPC)
  return trans;

 if (ino == BTRFS_EMPTY_SUBVOL_DIR_OBJECTID)
  return ERR_PTR(-ENOSPC);


 if (S_ISDIR(inode->i_mode) && atomic_read(&inode->i_count) > 1)
  return ERR_PTR(-ENOSPC);

 if (atomic_read(&inode->i_count) > 2)
  return ERR_PTR(-ENOSPC);

 if (xchg(&root->fs_info->enospc_unlink, 1))
  return ERR_PTR(-ENOSPC);

 path = btrfs_alloc_path();
 if (!path) {
  root->fs_info->enospc_unlink = 0;
  return ERR_PTR(-ENOMEM);
 }


 trans = btrfs_start_transaction(root, 1);
 if (IS_ERR(trans)) {
  btrfs_free_path(path);
  root->fs_info->enospc_unlink = 0;
  return trans;
 }

 path->skip_locking = 1;
 path->search_commit_root = 1;

 ret = btrfs_lookup_inode(trans, root, path,
    &BTRFS_I(dir)->location, 0);
 if (ret < 0) {
  err = ret;
  goto out;
 }
 if (ret == 0) {
  if (check_path_shared(root, path))
   goto out;
 } else {
  check_link = 0;
 }
 btrfs_release_path(path);

 ret = btrfs_lookup_inode(trans, root, path,
    &BTRFS_I(inode)->location, 0);
 if (ret < 0) {
  err = ret;
  goto out;
 }
 if (ret == 0) {
  if (check_path_shared(root, path))
   goto out;
 } else {
  check_link = 0;
 }
 btrfs_release_path(path);

 if (ret == 0 && S_ISREG(inode->i_mode)) {
  ret = btrfs_lookup_file_extent(trans, root, path,
            ino, (u64)-1, 0);
  if (ret < 0) {
   err = ret;
   goto out;
  }
  BUG_ON(ret == 0);
  if (check_path_shared(root, path))
   goto out;
  btrfs_release_path(path);
 }

 if (!check_link) {
  err = 0;
  goto out;
 }

 di = btrfs_lookup_dir_item(trans, root, path, dir_ino,
    dentry->d_name.name, dentry->d_name.len, 0);
 if (IS_ERR(di)) {
  err = PTR_ERR(di);
  goto out;
 }
 if (di) {
  if (check_path_shared(root, path))
   goto out;
 } else {
  err = 0;
  goto out;
 }
 btrfs_release_path(path);

 ref = btrfs_lookup_inode_ref(trans, root, path,
    dentry->d_name.name, dentry->d_name.len,
    ino, dir_ino, 0);
 if (IS_ERR(ref)) {
  err = PTR_ERR(ref);
  goto out;
 }
 BUG_ON(!ref);
 if (check_path_shared(root, path))
  goto out;
 index = btrfs_inode_ref_index(path->nodes[0], ref);
 btrfs_release_path(path);
 di = btrfs_lookup_dir_index_item(trans, root, path, dir_ino, index,
    dentry->d_name.name, dentry->d_name.len, 0);
 if (IS_ERR(di)) {
  err = PTR_ERR(di);
  goto out;
 }
 BUG_ON(ret == -ENOENT);
 if (check_path_shared(root, path))
  goto out;

 err = 0;
out:
 btrfs_free_path(path);

 if (!err)
  err = btrfs_block_rsv_migrate(trans->block_rsv,
    &root->fs_info->global_block_rsv,
    trans->bytes_reserved);

 if (err) {
  btrfs_end_transaction(trans, root);
  root->fs_info->enospc_unlink = 0;
  return ERR_PTR(err);
 }

 trans->block_rsv = &root->fs_info->global_block_rsv;
 return trans;
}
