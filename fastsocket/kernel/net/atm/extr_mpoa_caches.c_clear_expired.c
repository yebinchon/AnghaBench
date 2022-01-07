
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct mpoa_client {int egress_lock; TYPE_4__* eg_ops; TYPE_5__* eg_cache; } ;
struct TYPE_9__ {scalar_t__ holding_time; int cache_id; } ;
struct TYPE_8__ {TYPE_3__ eg_info; } ;
struct k_message {TYPE_2__ content; int type; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct TYPE_11__ {TYPE_3__ ctrl_info; TYPE_1__ tv; struct TYPE_11__* next; } ;
typedef TYPE_5__ eg_cache_entry ;
struct TYPE_10__ {int (* remove_entry ) (TYPE_5__*,struct mpoa_client*) ;} ;


 int SND_EGRESS_PURGE ;
 int do_gettimeofday (struct timeval*) ;
 int dprintk (char*,int ) ;
 int msg_to_mpoad (struct k_message*,struct mpoa_client*) ;
 int ntohl (int ) ;
 int stub1 (TYPE_5__*,struct mpoa_client*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void clear_expired(struct mpoa_client *client)
{
 eg_cache_entry *entry, *next_entry;
 struct timeval now;
 struct k_message msg;

 do_gettimeofday(&now);

 write_lock_irq(&client->egress_lock);
 entry = client->eg_cache;
 while(entry != ((void*)0)){
  next_entry = entry->next;
  if((now.tv_sec - entry->tv.tv_sec)
     > entry->ctrl_info.holding_time){
   msg.type = SND_EGRESS_PURGE;
   msg.content.eg_info = entry->ctrl_info;
   dprintk("mpoa: mpoa_caches.c: egress_cache: holding time expired, cache_id = %lu.\n",ntohl(entry->ctrl_info.cache_id));
   msg_to_mpoad(&msg, client);
   client->eg_ops->remove_entry(entry, client);
  }
  entry = next_entry;
 }
 write_unlock_irq(&client->egress_lock);

 return;
}
