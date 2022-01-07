
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mpc_p4; } ;
struct mpoa_client {int ingress_lock; TYPE_1__ parameters; int mps_ctrl_addr; TYPE_3__* in_cache; } ;
struct TYPE_7__ {int holding_time; int in_dst_ip; } ;
struct TYPE_8__ {int count; int use; TYPE_2__ ctrl_info; int entry_state; int retry_time; int tv; int MPS_ctrl_ATM_addr; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef TYPE_3__ in_cache_entry ;
typedef int __be32 ;


 int ATM_ESA_LEN ;
 int GFP_KERNEL ;
 int HOLDING_TIME_DEFAULT ;
 int INGRESS_INVALID ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int do_gettimeofday (int *) ;
 int dprintk (char*,...) ;
 TYPE_3__* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int printk (char*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static in_cache_entry *in_cache_add_entry(__be32 dst_ip,
       struct mpoa_client *client)
{
 in_cache_entry *entry = kzalloc(sizeof(in_cache_entry), GFP_KERNEL);

 if (entry == ((void*)0)) {
  printk("mpoa: mpoa_caches.c: new_in_cache_entry: out of memory\n");
  return ((void*)0);
 }

 dprintk("mpoa: mpoa_caches.c: adding an ingress entry, ip = %pI4\n", &dst_ip);

 atomic_set(&entry->use, 1);
 dprintk("mpoa: mpoa_caches.c: new_in_cache_entry: about to lock\n");
 write_lock_bh(&client->ingress_lock);
 entry->next = client->in_cache;
 entry->prev = ((void*)0);
 if (client->in_cache != ((void*)0))
  client->in_cache->prev = entry;
 client->in_cache = entry;

 memcpy(entry->MPS_ctrl_ATM_addr, client->mps_ctrl_addr, ATM_ESA_LEN);
 entry->ctrl_info.in_dst_ip = dst_ip;
 do_gettimeofday(&(entry->tv));
 entry->retry_time = client->parameters.mpc_p4;
 entry->count = 1;
 entry->entry_state = INGRESS_INVALID;
 entry->ctrl_info.holding_time = HOLDING_TIME_DEFAULT;
 atomic_inc(&entry->use);

 write_unlock_bh(&client->ingress_lock);
 dprintk("mpoa: mpoa_caches.c: new_in_cache_entry: unlocked\n");

 return entry;
}
