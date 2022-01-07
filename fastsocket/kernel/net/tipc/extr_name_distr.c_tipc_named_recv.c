
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct publication {int subscr; } ;
struct distr_item {int key; int ref; int lower; int type; int upper; } ;
typedef int net_ev_handler ;


 int ITEM_SIZE ;
 scalar_t__ PUBLICATION ;
 int TIPC_CLUSTER_SCOPE ;
 scalar_t__ WITHDRAWAL ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int dbg (char*,int ,int ,int ) ;
 int err (char*,int ,int ,int ,int ,int ) ;
 int kfree (struct publication*) ;
 scalar_t__ msg_data (struct tipc_msg*) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 scalar_t__ msg_type (struct tipc_msg*) ;
 scalar_t__ node_is_down ;
 int ntohl (int ) ;
 struct publication* tipc_nametbl_insert_publ (int ,int ,int ,int ,int ,int ,int ) ;
 int tipc_nametbl_lock ;
 struct publication* tipc_nametbl_remove_publ (int ,int ,int ,int ,int ) ;
 int tipc_nodesub_subscribe (int *,int ,struct publication*,int ) ;
 int tipc_nodesub_unsubscribe (int *) ;
 int warn (char*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tipc_named_recv(struct sk_buff *buf)
{
 struct publication *publ;
 struct tipc_msg *msg = buf_msg(buf);
 struct distr_item *item = (struct distr_item *)msg_data(msg);
 u32 count = msg_data_sz(msg) / ITEM_SIZE;

 write_lock_bh(&tipc_nametbl_lock);
 while (count--) {
  if (msg_type(msg) == PUBLICATION) {
   dbg("tipc_named_recv: got publication for %u, %u, %u\n",
       ntohl(item->type), ntohl(item->lower),
       ntohl(item->upper));
   publ = tipc_nametbl_insert_publ(ntohl(item->type),
       ntohl(item->lower),
       ntohl(item->upper),
       TIPC_CLUSTER_SCOPE,
       msg_orignode(msg),
       ntohl(item->ref),
       ntohl(item->key));
   if (publ) {
    tipc_nodesub_subscribe(&publ->subscr,
             msg_orignode(msg),
             publ,
             (net_ev_handler)node_is_down);
   }
  } else if (msg_type(msg) == WITHDRAWAL) {
   dbg("tipc_named_recv: got withdrawl for %u, %u, %u\n",
       ntohl(item->type), ntohl(item->lower),
       ntohl(item->upper));
   publ = tipc_nametbl_remove_publ(ntohl(item->type),
       ntohl(item->lower),
       msg_orignode(msg),
       ntohl(item->ref),
       ntohl(item->key));

   if (publ) {
    tipc_nodesub_unsubscribe(&publ->subscr);
    kfree(publ);
   } else {
    err("Unable to remove publication by node 0x%x\n"
        "(type=%u, lower=%u, ref=%u, key=%u)\n",
        msg_orignode(msg),
        ntohl(item->type), ntohl(item->lower),
        ntohl(item->ref), ntohl(item->key));
   }
  } else {
   warn("Unrecognized name table message received\n");
  }
  item++;
 }
 write_unlock_bh(&tipc_nametbl_lock);
 buf_discard(buf);
}
