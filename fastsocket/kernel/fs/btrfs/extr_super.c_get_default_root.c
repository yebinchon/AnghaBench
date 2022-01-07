
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct super_block {TYPE_1__* s_root; } ;
struct inode {int root_item; } ;
struct dentry {int dummy; } ;
struct btrfs_root {int root_item; } ;
struct btrfs_path {int leave_spinning; int * nodes; } ;
struct btrfs_key {void* offset; int type; void* objectid; } ;
struct btrfs_fs_info {struct inode* fs_root; int super_copy; struct inode* tree_root; } ;
struct btrfs_dir_item {int root_item; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 void* BTRFS_FIRST_FREE_OBJECTID ;
 int BTRFS_INODE_ITEM_KEY ;
 int BTRFS_ROOT_ITEM_KEY ;
 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_dir_item_key_to_cpu (int ,struct inode*,struct btrfs_key*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 struct inode* btrfs_iget (struct super_block*,struct btrfs_key*,struct inode*,int*) ;
 struct inode* btrfs_lookup_dir_item (int *,struct inode*,struct btrfs_path*,void*,char*,int,int ) ;
 struct inode* btrfs_read_fs_root_no_name (struct btrfs_fs_info*,struct btrfs_key*) ;
 void* btrfs_root_dirid (int *) ;
 scalar_t__ btrfs_root_refs (int *) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 void* btrfs_super_root_dir (int ) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct dentry* dget (TYPE_1__*) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *get_default_root(struct super_block *sb,
           u64 subvol_objectid)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_root *root = fs_info->tree_root;
 struct btrfs_root *new_root;
 struct btrfs_dir_item *di;
 struct btrfs_path *path;
 struct btrfs_key location;
 struct inode *inode;
 u64 dir_id;
 int new = 0;





 if (subvol_objectid) {
  location.objectid = subvol_objectid;
  location.type = BTRFS_ROOT_ITEM_KEY;
  location.offset = (u64)-1;
  goto find_root;
 }

 path = btrfs_alloc_path();
 if (!path)
  return ERR_PTR(-ENOMEM);
 path->leave_spinning = 1;






 dir_id = btrfs_super_root_dir(fs_info->super_copy);
 di = btrfs_lookup_dir_item(((void*)0), root, path, dir_id, "default", 7, 0);
 if (IS_ERR(di)) {
  btrfs_free_path(path);
  return ERR_CAST(di);
 }
 if (!di) {





  btrfs_free_path(path);
  dir_id = BTRFS_FIRST_FREE_OBJECTID;
  new_root = fs_info->fs_root;
  goto setup_root;
 }

 btrfs_dir_item_key_to_cpu(path->nodes[0], di, &location);
 btrfs_free_path(path);

find_root:
 new_root = btrfs_read_fs_root_no_name(fs_info, &location);
 if (IS_ERR(new_root))
  return ERR_CAST(new_root);

 if (btrfs_root_refs(&new_root->root_item) == 0)
  return ERR_PTR(-ENOENT);

 dir_id = btrfs_root_dirid(&new_root->root_item);
setup_root:
 location.objectid = dir_id;
 location.type = BTRFS_INODE_ITEM_KEY;
 location.offset = 0;

 inode = btrfs_iget(sb, &location, new_root, &new);
 if (IS_ERR(inode))
  return ERR_CAST(inode);






 if (!new && sb->s_root->d_inode == inode) {
  iput(inode);
  return dget(sb->s_root);
 }

 return d_obtain_alias(inode);
}
