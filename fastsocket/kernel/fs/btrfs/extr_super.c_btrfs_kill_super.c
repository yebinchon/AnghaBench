
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int free_fs_info (struct btrfs_fs_info*) ;
 int kill_anon_super (struct super_block*) ;

__attribute__((used)) static void btrfs_kill_super(struct super_block *sb)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 kill_anon_super(sb);
 free_fs_info(fs_info);
}
