
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct mpoa_client {int ingress_lock; TYPE_3__* in_ops; TYPE_4__* in_cache; } ;
struct TYPE_7__ {scalar_t__ holding_time; int in_dst_ip; } ;
struct TYPE_6__ {scalar_t__ tv_sec; } ;
struct TYPE_9__ {TYPE_2__ ctrl_info; TYPE_1__ tv; struct TYPE_9__* next; scalar_t__ count; } ;
typedef TYPE_4__ in_cache_entry ;
struct TYPE_8__ {int (* remove_entry ) (TYPE_4__*,struct mpoa_client*) ;} ;


 int do_gettimeofday (struct timeval*) ;
 int dprintk (char*,int *) ;
 int stub1 (TYPE_4__*,struct mpoa_client*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void clear_count_and_expired(struct mpoa_client *client)
{
 in_cache_entry *entry, *next_entry;
 struct timeval now;

 do_gettimeofday(&now);

 write_lock_bh(&client->ingress_lock);
 entry = client->in_cache;
 while(entry != ((void*)0)){
  entry->count=0;
  next_entry = entry->next;
  if((now.tv_sec - entry->tv.tv_sec)
     > entry->ctrl_info.holding_time){
   dprintk("mpoa: mpoa_caches.c: holding time expired, ip = %pI4\n",
    &entry->ctrl_info.in_dst_ip);
   client->in_ops->remove_entry(entry, client);
  }
  entry = next_entry;
 }
 write_unlock_bh(&client->ingress_lock);

 return;
}
