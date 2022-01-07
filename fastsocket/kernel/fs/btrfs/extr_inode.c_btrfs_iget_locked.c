
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_iget_args {struct btrfs_root* root; int ino; } ;


 int btrfs_find_actor ;
 int btrfs_init_locked_inode ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,void*) ;

__attribute__((used)) static struct inode *btrfs_iget_locked(struct super_block *s,
           u64 objectid,
           struct btrfs_root *root)
{
 struct inode *inode;
 struct btrfs_iget_args args;
 args.ino = objectid;
 args.root = root;

 inode = iget5_locked(s, objectid, btrfs_find_actor,
        btrfs_init_locked_inode,
        (void *)&args);
 return inode;
}
