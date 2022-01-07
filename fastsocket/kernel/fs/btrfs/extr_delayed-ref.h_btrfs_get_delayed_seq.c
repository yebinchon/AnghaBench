
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_list {int list; int seq; } ;
struct btrfs_delayed_ref_root {int seq_head; int seq; int lock; } ;


 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void
btrfs_get_delayed_seq(struct btrfs_delayed_ref_root *delayed_refs,
        struct seq_list *elem)
{
 assert_spin_locked(&delayed_refs->lock);
 elem->seq = delayed_refs->seq;
 list_add_tail(&elem->list, &delayed_refs->seq_head);
}
