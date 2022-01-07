
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode_fs_paths {int btrfs_path; int fs_root; } ;


 int inode_to_path ;
 int iterate_irefs (int ,int ,int ,int ,struct inode_fs_paths*) ;

int paths_from_inode(u64 inum, struct inode_fs_paths *ipath)
{
 return iterate_irefs(inum, ipath->fs_root, ipath->btrfs_path,
    inode_to_path, ipath);
}
