
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpoa_client {int egress_lock; TYPE_2__* eg_cache; } ;
struct TYPE_4__ {scalar_t__ tag; } ;
struct TYPE_5__ {struct TYPE_5__* next; int use; TYPE_1__ ctrl_info; } ;
typedef TYPE_2__ eg_cache_entry ;
typedef scalar_t__ __be32 ;


 int atomic_inc (int *) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static eg_cache_entry *eg_cache_get_by_tag(__be32 tag, struct mpoa_client *mpc)
{
 unsigned long flags;
 eg_cache_entry *entry;

 read_lock_irqsave(&mpc->egress_lock, flags);
 entry = mpc->eg_cache;
 while (entry != ((void*)0)){
  if (entry->ctrl_info.tag == tag) {
   atomic_inc(&entry->use);
   read_unlock_irqrestore(&mpc->egress_lock, flags);
   return entry;
  }
  entry = entry->next;
 }
 read_unlock_irqrestore(&mpc->egress_lock, flags);

 return ((void*)0);
}
