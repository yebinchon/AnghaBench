
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int lock; } ;


 int spin_lock_bh (int *) ;

__attribute__((used)) static inline void tipc_node_lock(struct tipc_node *n_ptr)
{
 spin_lock_bh(&n_ptr->lock);
}
