
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct btrfs_fs_info {int cleaner_mutex; int transaction_kthread_mutex; } ;


 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static int btrfs_freeze(struct super_block *sb)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 mutex_lock(&fs_info->transaction_kthread_mutex);
 mutex_lock(&fs_info->cleaner_mutex);
 return 0;
}
