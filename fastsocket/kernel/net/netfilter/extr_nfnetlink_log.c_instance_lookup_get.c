
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct nfulnl_instance {int dummy; } ;


 struct nfulnl_instance* __instance_lookup (int ) ;
 int instance_get (struct nfulnl_instance*) ;
 int instances_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static struct nfulnl_instance *
instance_lookup_get(u_int16_t group_num)
{
 struct nfulnl_instance *inst;

 read_lock_bh(&instances_lock);
 inst = __instance_lookup(group_num);
 if (inst)
  instance_get(inst);
 read_unlock_bh(&instances_lock);

 return inst;
}
