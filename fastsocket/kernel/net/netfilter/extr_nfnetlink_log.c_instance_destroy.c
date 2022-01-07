
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int dummy; } ;


 int __instance_destroy (struct nfulnl_instance*) ;
 int instances_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void
instance_destroy(struct nfulnl_instance *inst)
{
 write_lock_bh(&instances_lock);
 __instance_destroy(inst);
 write_unlock_bh(&instances_lock);
}
