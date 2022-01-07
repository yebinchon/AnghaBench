
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct mpoa_client {int ingress_lock; struct in_cache_entry* in_cache; } ;
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {int holding_time; } ;
struct in_cache_entry {scalar_t__ entry_state; int refresh_time; struct in_cache_entry* next; TYPE_2__ reply_wait; TYPE_1__ ctrl_info; } ;


 scalar_t__ INGRESS_REFRESHING ;
 scalar_t__ INGRESS_RESOLVED ;
 int ddprintk (char*) ;
 int do_gettimeofday (struct timeval*) ;
 int dprintk (char*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void refresh_entries(struct mpoa_client *client)
{
 struct timeval now;
 struct in_cache_entry *entry = client->in_cache;

 ddprintk("mpoa: mpoa_caches.c: refresh_entries\n");
 do_gettimeofday(&now);

 read_lock_bh(&client->ingress_lock);
 while( entry != ((void*)0) ){
  if( entry->entry_state == INGRESS_RESOLVED ){
   if(!(entry->refresh_time))
    entry->refresh_time = (2*(entry->ctrl_info.holding_time))/3;
   if( (now.tv_sec - entry->reply_wait.tv_sec) > entry->refresh_time ){
    dprintk("mpoa: mpoa_caches.c: refreshing an entry.\n");
    entry->entry_state = INGRESS_REFRESHING;

   }
  }
  entry = entry->next;
 }
 read_unlock_bh(&client->ingress_lock);
}
