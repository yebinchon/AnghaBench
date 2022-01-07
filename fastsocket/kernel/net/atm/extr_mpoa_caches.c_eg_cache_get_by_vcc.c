
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpoa_client {int egress_lock; TYPE_1__* eg_cache; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* next; int use; struct atm_vcc* shortcut; } ;
typedef TYPE_1__ eg_cache_entry ;


 int atomic_inc (int *) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static eg_cache_entry *eg_cache_get_by_vcc(struct atm_vcc *vcc, struct mpoa_client *mpc)
{
 unsigned long flags;
 eg_cache_entry *entry;

 read_lock_irqsave(&mpc->egress_lock, flags);
 entry = mpc->eg_cache;
 while (entry != ((void*)0)){
  if (entry->shortcut == vcc) {
   atomic_inc(&entry->use);
   read_unlock_irqrestore(&mpc->egress_lock, flags);
   return entry;
  }
  entry = entry->next;
 }
 read_unlock_irqrestore(&mpc->egress_lock, flags);

 return ((void*)0);
}
