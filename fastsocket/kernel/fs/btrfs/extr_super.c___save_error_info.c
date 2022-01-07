
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int fs_state; } ;


 int BTRFS_SUPER_FLAG_ERROR ;

__attribute__((used)) static void __save_error_info(struct btrfs_fs_info *fs_info)
{




 fs_info->fs_state = BTRFS_SUPER_FLAG_ERROR;
}
