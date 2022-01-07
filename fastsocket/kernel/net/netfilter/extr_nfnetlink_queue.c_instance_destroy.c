
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfqnl_instance {int dummy; } ;


 int __instance_destroy (struct nfqnl_instance*) ;
 int instances_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
instance_destroy(struct nfqnl_instance *inst)
{
 spin_lock(&instances_lock);
 __instance_destroy(inst);
 spin_unlock(&instances_lock);
}
