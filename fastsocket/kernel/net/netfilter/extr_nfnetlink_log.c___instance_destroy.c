
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int lock; scalar_t__ skb; int hlist; } ;


 int __nfulnl_flush (struct nfulnl_instance*) ;
 int hlist_del (int *) ;
 int instance_put (struct nfulnl_instance*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
__instance_destroy(struct nfulnl_instance *inst)
{

 hlist_del(&inst->hlist);



 spin_lock_bh(&inst->lock);
 if (inst->skb)
  __nfulnl_flush(inst);
 spin_unlock_bh(&inst->lock);


 instance_put(inst);
}
