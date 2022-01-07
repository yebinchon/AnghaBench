
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_root {scalar_t__ last_log_commit; int log_mutex; } ;
struct TYPE_2__ {scalar_t__ logged_trans; scalar_t__ last_sub_trans; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int btrfs_inode_in_log(struct inode *inode, u64 generation)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 int ret = 0;

 mutex_lock(&root->log_mutex);
 if (BTRFS_I(inode)->logged_trans == generation &&
     BTRFS_I(inode)->last_sub_trans <= root->last_log_commit)
  ret = 1;
 mutex_unlock(&root->log_mutex);
 return ret;
}
