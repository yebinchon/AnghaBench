
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct mpoa_client {TYPE_5__* eg_ops; int * eg_cache; TYPE_4__* in_cache; TYPE_3__* in_ops; } ;
struct k_message {int type; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_9__ {int in_dst_ip; } ;
struct TYPE_14__ {TYPE_2__* prev; TYPE_4__* next; TYPE_1__ ctrl_info; struct atm_vcc* shortcut; } ;
typedef TYPE_6__ in_cache_entry ;
typedef int eg_cache_entry ;
struct TYPE_13__ {int (* put ) (int *) ;int * (* get_by_vcc ) (struct atm_vcc*,struct mpoa_client*) ;} ;
struct TYPE_12__ {TYPE_2__* prev; } ;
struct TYPE_11__ {int (* put ) (TYPE_6__*) ;} ;
struct TYPE_10__ {TYPE_4__* next; } ;


 int EPIPE ;
 int STOP_KEEP_ALIVE_SM ;
 int dprintk (char*,int *) ;
 int msg_to_mpoad (struct k_message*,struct mpoa_client*) ;
 int stub1 (TYPE_6__*) ;
 int * stub2 (struct atm_vcc*,struct mpoa_client*) ;
 int stub3 (int *) ;
 int vcc_release_async (struct atm_vcc*,int ) ;

__attribute__((used)) static void in_cache_remove_entry(in_cache_entry *entry,
      struct mpoa_client *client)
{
 struct atm_vcc *vcc;
 struct k_message msg;

 vcc = entry->shortcut;
 dprintk("mpoa: mpoa_caches.c: removing an ingress entry, ip = %pI4\n",
  &entry->ctrl_info.in_dst_ip);

 if (entry->prev != ((void*)0))
  entry->prev->next = entry->next;
 else
  client->in_cache = entry->next;
 if (entry->next != ((void*)0))
  entry->next->prev = entry->prev;
 client->in_ops->put(entry);
 if(client->in_cache == ((void*)0) && client->eg_cache == ((void*)0)){
  msg.type = STOP_KEEP_ALIVE_SM;
  msg_to_mpoad(&msg,client);
 }


 if (vcc != ((void*)0)) {
  eg_cache_entry *eg_entry = client->eg_ops->get_by_vcc(vcc, client);
  if (eg_entry != ((void*)0)) {
   client->eg_ops->put(eg_entry);
   return;
  }
  vcc_release_async(vcc, -EPIPE);
 }

 return;
}
