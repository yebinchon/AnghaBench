
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_root {int prepare_list; int node_list; int wait; int lock; scalar_t__ nodes; int items; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void btrfs_init_delayed_root(
    struct btrfs_delayed_root *delayed_root)
{
 atomic_set(&delayed_root->items, 0);
 delayed_root->nodes = 0;
 spin_lock_init(&delayed_root->lock);
 init_waitqueue_head(&delayed_root->wait);
 INIT_LIST_HEAD(&delayed_root->node_list);
 INIT_LIST_HEAD(&delayed_root->prepare_list);
}
