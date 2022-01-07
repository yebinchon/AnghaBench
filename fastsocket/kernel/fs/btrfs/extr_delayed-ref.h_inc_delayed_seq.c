
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_delayed_ref_root {int seq; int lock; } ;


 int assert_spin_locked (int *) ;

__attribute__((used)) static inline u64 inc_delayed_seq(struct btrfs_delayed_ref_root *delayed_refs)
{
 assert_spin_locked(&delayed_refs->lock);
 ++delayed_refs->seq;
 return delayed_refs->seq;
}
