
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;
struct btrfs_dir_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int ENODATA ;
 int ENOMEM ;
 int ERANGE ;
 scalar_t__ IS_ERR (struct btrfs_dir_item*) ;
 int PTR_ERR (struct btrfs_dir_item*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 size_t btrfs_dir_data_len (struct extent_buffer*,struct btrfs_dir_item*) ;
 int btrfs_dir_name_len (struct extent_buffer*,struct btrfs_dir_item*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_ino (struct inode*) ;
 struct btrfs_dir_item* btrfs_lookup_xattr (int *,struct btrfs_root*,struct btrfs_path*,int ,char const*,int ,int ) ;
 int read_extent_buffer (struct extent_buffer*,void*,unsigned long,size_t) ;
 int strlen (char const*) ;

ssize_t __btrfs_getxattr(struct inode *inode, const char *name,
    void *buffer, size_t size)
{
 struct btrfs_dir_item *di;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_path *path;
 struct extent_buffer *leaf;
 int ret = 0;
 unsigned long data_ptr;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;


 di = btrfs_lookup_xattr(((void*)0), root, path, btrfs_ino(inode), name,
    strlen(name), 0);
 if (!di) {
  ret = -ENODATA;
  goto out;
 } else if (IS_ERR(di)) {
  ret = PTR_ERR(di);
  goto out;
 }

 leaf = path->nodes[0];

 if (!size) {
  ret = btrfs_dir_data_len(leaf, di);
  goto out;
 }


 if (btrfs_dir_data_len(leaf, di) > size) {
  ret = -ERANGE;
  goto out;
 }
 data_ptr = (unsigned long)((char *)(di + 1) +
       btrfs_dir_name_len(leaf, di));
 read_extent_buffer(leaf, buffer, data_ptr,
      btrfs_dir_data_len(leaf, di));
 ret = btrfs_dir_data_len(leaf, di);

out:
 btrfs_free_path(path);
 return ret;
}
