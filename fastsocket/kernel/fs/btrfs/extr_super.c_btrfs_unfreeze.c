
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct btrfs_fs_info {int transaction_kthread_mutex; int cleaner_mutex; } ;


 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int btrfs_unfreeze(struct super_block *sb)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 mutex_unlock(&fs_info->cleaner_mutex);
 mutex_unlock(&fs_info->transaction_kthread_mutex);
 return 0;
}
