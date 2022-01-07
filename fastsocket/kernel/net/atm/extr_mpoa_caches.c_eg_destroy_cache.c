
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpoa_client {int egress_lock; int * eg_cache; TYPE_1__* eg_ops; } ;
struct TYPE_2__ {int (* remove_entry ) (int *,struct mpoa_client*) ;} ;


 int stub1 (int *,struct mpoa_client*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void eg_destroy_cache(struct mpoa_client *mpc)
{
 write_lock_irq(&mpc->egress_lock);
 while(mpc->eg_cache != ((void*)0))
  mpc->eg_ops->remove_entry(mpc->eg_cache, mpc);
 write_unlock_irq(&mpc->egress_lock);

 return;
}
