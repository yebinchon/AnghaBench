
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_list {int list; } ;
struct btrfs_delayed_ref_root {int lock; int seq_wait; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
btrfs_put_delayed_seq(struct btrfs_delayed_ref_root *delayed_refs,
        struct seq_list *elem)
{
 spin_lock(&delayed_refs->lock);
 list_del(&elem->list);
 wake_up(&delayed_refs->seq_wait);
 spin_unlock(&delayed_refs->lock);
}
