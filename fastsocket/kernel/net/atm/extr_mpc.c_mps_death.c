
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mpoa_client {TYPE_2__* eg_ops; TYPE_1__* in_ops; int egress_lock; TYPE_4__* eg_cache; TYPE_3__* dev; int mps_ctrl_addr; } ;
struct k_message {int MPS_ctrl; } ;
struct TYPE_9__ {struct TYPE_9__* next; int shortcut; } ;
typedef TYPE_4__ eg_cache_entry ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int (* destroy_cache ) (struct mpoa_client*) ;} ;
struct TYPE_6__ {int (* destroy_cache ) (struct mpoa_client*) ;} ;


 int ATM_ESA_LEN ;
 int dprintk (char*,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int printk (char*,int ) ;
 int purge_egress_shortcut (int ,TYPE_4__*) ;
 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;
 int stub1 (struct mpoa_client*) ;
 int stub2 (struct mpoa_client*) ;

__attribute__((used)) static void mps_death( struct k_message * msg, struct mpoa_client * mpc )
{
 eg_cache_entry *entry;

 dprintk("mpoa: (%s) mps_death:\n", mpc->dev->name);

 if(memcmp(msg->MPS_ctrl, mpc->mps_ctrl_addr, ATM_ESA_LEN)){
  printk("mpoa: (%s) mps_death: wrong MPS\n", mpc->dev->name);
  return;
 }


 read_lock_irq(&mpc->egress_lock);
 entry = mpc->eg_cache;
 while (entry != ((void*)0)) {
  purge_egress_shortcut(entry->shortcut, entry);
  entry = entry->next;
 }
 read_unlock_irq(&mpc->egress_lock);

 mpc->in_ops->destroy_cache(mpc);
 mpc->eg_ops->destroy_cache(mpc);

 return;
}
