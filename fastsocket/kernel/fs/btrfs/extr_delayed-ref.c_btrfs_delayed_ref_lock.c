
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_delayed_ref_root {int lock; } ;
struct TYPE_4__ {int in_tree; int refs; } ;
struct btrfs_delayed_ref_head {TYPE_2__ node; int mutex; } ;
struct TYPE_3__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 int EAGAIN ;
 int assert_spin_locked (int *) ;
 int atomic_inc (int *) ;
 int btrfs_put_delayed_ref (TYPE_2__*) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_delayed_ref_lock(struct btrfs_trans_handle *trans,
      struct btrfs_delayed_ref_head *head)
{
 struct btrfs_delayed_ref_root *delayed_refs;

 delayed_refs = &trans->transaction->delayed_refs;
 assert_spin_locked(&delayed_refs->lock);
 if (mutex_trylock(&head->mutex))
  return 0;

 atomic_inc(&head->node.refs);
 spin_unlock(&delayed_refs->lock);

 mutex_lock(&head->mutex);
 spin_lock(&delayed_refs->lock);
 if (!head->node.in_tree) {
  mutex_unlock(&head->mutex);
  btrfs_put_delayed_ref(&head->node);
  return -EAGAIN;
 }
 btrfs_put_delayed_ref(&head->node);
 return 0;
}
