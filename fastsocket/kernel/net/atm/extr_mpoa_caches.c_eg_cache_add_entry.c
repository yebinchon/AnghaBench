
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mpoa_client {int egress_lock; int mps_ctrl_addr; TYPE_3__* eg_cache; } ;
struct TYPE_7__ {int mps_ip; int cache_id; int eg_dst_ip; } ;
struct TYPE_6__ {TYPE_2__ eg_info; } ;
struct k_message {TYPE_1__ content; } ;
struct TYPE_8__ {int use; TYPE_2__ ctrl_info; int entry_state; int tv; int MPS_ctrl_ATM_addr; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef TYPE_3__ eg_cache_entry ;


 int ATM_ESA_LEN ;
 int EGRESS_RESOLVED ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int do_gettimeofday (int *) ;
 int dprintk (char*,...) ;
 TYPE_3__* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int ntohl (int ) ;
 int printk (char*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static eg_cache_entry *eg_cache_add_entry(struct k_message *msg, struct mpoa_client *client)
{
 eg_cache_entry *entry = kzalloc(sizeof(eg_cache_entry), GFP_KERNEL);

 if (entry == ((void*)0)) {
  printk("mpoa: mpoa_caches.c: new_eg_cache_entry: out of memory\n");
  return ((void*)0);
 }

 dprintk("mpoa: mpoa_caches.c: adding an egress entry, ip = %pI4, this should be our IP\n",
  &msg->content.eg_info.eg_dst_ip);

 atomic_set(&entry->use, 1);
 dprintk("mpoa: mpoa_caches.c: new_eg_cache_entry: about to lock\n");
 write_lock_irq(&client->egress_lock);
 entry->next = client->eg_cache;
 entry->prev = ((void*)0);
 if (client->eg_cache != ((void*)0))
  client->eg_cache->prev = entry;
 client->eg_cache = entry;

 memcpy(entry->MPS_ctrl_ATM_addr, client->mps_ctrl_addr, ATM_ESA_LEN);
 entry->ctrl_info = msg->content.eg_info;
 do_gettimeofday(&(entry->tv));
 entry->entry_state = EGRESS_RESOLVED;
 dprintk("mpoa: mpoa_caches.c: new_eg_cache_entry cache_id %lu\n", ntohl(entry->ctrl_info.cache_id));
 dprintk("mpoa: mpoa_caches.c: mps_ip = %pI4\n",
  &entry->ctrl_info.mps_ip);
 atomic_inc(&entry->use);

 write_unlock_irq(&client->egress_lock);
 dprintk("mpoa: mpoa_caches.c: new_eg_cache_entry: unlocked\n");

 return entry;
}
