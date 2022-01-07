
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int balance_cancel_req; int balance_pause_req; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline int balance_need_close(struct btrfs_fs_info *fs_info)
{

 return atomic_read(&fs_info->balance_cancel_req) ||
  (atomic_read(&fs_info->balance_pause_req) == 0 &&
   atomic_read(&fs_info->balance_cancel_req) == 0);
}
