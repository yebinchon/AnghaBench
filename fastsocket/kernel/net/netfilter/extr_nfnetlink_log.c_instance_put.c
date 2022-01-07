
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int use; } ;


 int THIS_MODULE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct nfulnl_instance*) ;
 int module_put (int ) ;

__attribute__((used)) static void
instance_put(struct nfulnl_instance *inst)
{
 if (inst && atomic_dec_and_test(&inst->use)) {
  kfree(inst);
  module_put(THIS_MODULE);
 }
}
