
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct route4_head {int fastmap; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;


 int memset (int ,int ,int) ;
 int * qdisc_root_sleeping_lock (struct Qdisc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline
void route4_reset_fastmap(struct Qdisc *q, struct route4_head *head, u32 id)
{
 spinlock_t *root_lock = qdisc_root_sleeping_lock(q);

 spin_lock_bh(root_lock);
 memset(head->fastmap, 0, sizeof(head->fastmap));
 spin_unlock_bh(root_lock);
}
