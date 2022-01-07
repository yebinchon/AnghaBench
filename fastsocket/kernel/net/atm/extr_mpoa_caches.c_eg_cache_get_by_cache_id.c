
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpoa_client {int egress_lock; TYPE_2__* eg_cache; } ;
struct TYPE_4__ {scalar_t__ cache_id; } ;
struct TYPE_5__ {struct TYPE_5__* next; int use; TYPE_1__ ctrl_info; } ;
typedef TYPE_2__ eg_cache_entry ;
typedef scalar_t__ __be32 ;


 int atomic_inc (int *) ;
 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;

__attribute__((used)) static eg_cache_entry *eg_cache_get_by_cache_id(__be32 cache_id, struct mpoa_client *mpc)
{
 eg_cache_entry *entry;

 read_lock_irq(&mpc->egress_lock);
 entry = mpc->eg_cache;
 while(entry != ((void*)0)){
  if(entry->ctrl_info.cache_id == cache_id){
   atomic_inc(&entry->use);
   read_unlock_irq(&mpc->egress_lock);
   return entry;
  }
  entry = entry->next;
 }
 read_unlock_irq(&mpc->egress_lock);

 return ((void*)0);
}
