
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int __save_error_info (struct btrfs_fs_info*) ;

__attribute__((used)) static void save_error_info(struct btrfs_fs_info *fs_info)
{
 __save_error_info(fs_info);
}
