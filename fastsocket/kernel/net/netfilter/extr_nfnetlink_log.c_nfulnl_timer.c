
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int lock; scalar_t__ skb; } ;


 int __nfulnl_send (struct nfulnl_instance*) ;
 int instance_put (struct nfulnl_instance*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
nfulnl_timer(unsigned long data)
{
 struct nfulnl_instance *inst = (struct nfulnl_instance *)data;

 spin_lock_bh(&inst->lock);
 if (inst->skb)
  __nfulnl_send(inst);
 spin_unlock_bh(&inst->lock);
 instance_put(inst);
}
