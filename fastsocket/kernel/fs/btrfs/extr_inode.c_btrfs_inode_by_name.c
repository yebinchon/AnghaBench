
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * nodes; } ;
struct btrfs_key {scalar_t__ objectid; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_dir_item*) ;
 scalar_t__ IS_ERR_OR_NULL (struct btrfs_dir_item*) ;
 int PTR_ERR (struct btrfs_dir_item*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_dir_item_key_to_cpu (int ,struct btrfs_dir_item*,struct btrfs_key*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_ino (struct inode*) ;
 struct btrfs_dir_item* btrfs_lookup_dir_item (int *,struct btrfs_root*,struct btrfs_path*,int ,char const*,int,int ) ;

__attribute__((used)) static int btrfs_inode_by_name(struct inode *dir, struct dentry *dentry,
          struct btrfs_key *location)
{
 const char *name = dentry->d_name.name;
 int namelen = dentry->d_name.len;
 struct btrfs_dir_item *di;
 struct btrfs_path *path;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 int ret = 0;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 di = btrfs_lookup_dir_item(((void*)0), root, path, btrfs_ino(dir), name,
        namelen, 0);
 if (IS_ERR(di))
  ret = PTR_ERR(di);

 if (IS_ERR_OR_NULL(di))
  goto out_err;

 btrfs_dir_item_key_to_cpu(path->nodes[0], di, location);
out:
 btrfs_free_path(path);
 return ret;
out_err:
 location->objectid = 0;
 goto out;
}
