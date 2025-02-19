
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {void* offset; int type; void* objectid; } ;
struct btrfs_inode_ref {int dummy; } ;


 int BTRFS_INODE_REF_KEY ;
 struct btrfs_inode_ref* ERR_PTR (int) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int find_name_in_backref (struct btrfs_path*,char const*,int,struct btrfs_inode_ref**) ;

struct btrfs_inode_ref *
btrfs_lookup_inode_ref(struct btrfs_trans_handle *trans,
   struct btrfs_root *root,
   struct btrfs_path *path,
   const char *name, int name_len,
   u64 inode_objectid, u64 ref_objectid, int mod)
{
 struct btrfs_key key;
 struct btrfs_inode_ref *ref;
 int ins_len = mod < 0 ? -1 : 0;
 int cow = mod != 0;
 int ret;

 key.objectid = inode_objectid;
 key.type = BTRFS_INODE_REF_KEY;
 key.offset = ref_objectid;

 ret = btrfs_search_slot(trans, root, &key, path, ins_len, cow);
 if (ret < 0)
  return ERR_PTR(ret);
 if (ret > 0)
  return ((void*)0);
 if (!find_name_in_backref(path, name, name_len, &ref))
  return ((void*)0);
 return ref;
}
