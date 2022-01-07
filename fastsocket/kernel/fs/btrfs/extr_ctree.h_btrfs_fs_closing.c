
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int closing; } ;


 int smp_mb () ;

__attribute__((used)) static inline int btrfs_fs_closing(struct btrfs_fs_info *fs_info)
{



 smp_mb();
 return fs_info->closing;
}
