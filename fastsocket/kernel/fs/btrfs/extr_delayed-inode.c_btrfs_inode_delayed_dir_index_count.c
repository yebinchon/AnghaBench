
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_delayed_node {scalar_t__ index_cnt; } ;
struct TYPE_2__ {scalar_t__ index_cnt; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int EINVAL ;
 int ENOENT ;
 struct btrfs_delayed_node* btrfs_get_delayed_node (struct inode*) ;
 int btrfs_release_delayed_node (struct btrfs_delayed_node*) ;

int btrfs_inode_delayed_dir_index_count(struct inode *inode)
{
 struct btrfs_delayed_node *delayed_node = btrfs_get_delayed_node(inode);

 if (!delayed_node)
  return -ENOENT;






 if (!delayed_node->index_cnt) {
  btrfs_release_delayed_node(delayed_node);
  return -EINVAL;
 }

 BTRFS_I(inode)->index_cnt = delayed_node->index_cnt;
 btrfs_release_delayed_node(delayed_node);
 return 0;
}
