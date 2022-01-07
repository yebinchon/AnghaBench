
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_port {struct tipc_msg phdr; scalar_t__ ref; int max_pkt; void* usr_handle; int lock; } ;
struct TYPE_2__ {int nodesub_list; } ;
struct port {int last_in_seqno; int sent; void (* wakeup ) (struct tipc_port*) ;struct tipc_port publ; int port_list; int publications; int timer; int * user_port; scalar_t__ (* dispatcher ) (struct tipc_port*,struct sk_buff*) ;int * congested_link; TYPE_1__ subscription; int wait_list; } ;
typedef int Handler ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int LONG_H_SIZE ;
 int MAX_PKT_DEFAULT ;
 int TIPC_NAMED_MSG ;
 int k_init_timer (int *,int ,scalar_t__) ;
 int kfree (struct port*) ;
 struct port* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int msg_init (struct tipc_msg*,scalar_t__ const,int ,int ,int ) ;
 int msg_set_origport (struct tipc_msg*,scalar_t__) ;
 scalar_t__ port_timeout ;
 int ports ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_port_list_lock ;
 scalar_t__ tipc_ref_acquire (struct port*,int *) ;
 int warn (char*) ;

struct tipc_port *tipc_createport_raw(void *usr_handle,
   u32 (*dispatcher)(struct tipc_port *, struct sk_buff *),
   void (*wakeup)(struct tipc_port *),
   const u32 importance)
{
 struct port *p_ptr;
 struct tipc_msg *msg;
 u32 ref;

 p_ptr = kzalloc(sizeof(*p_ptr), GFP_ATOMIC);
 if (!p_ptr) {
  warn("Port creation failed, no memory\n");
  return ((void*)0);
 }
 ref = tipc_ref_acquire(p_ptr, &p_ptr->publ.lock);
 if (!ref) {
  warn("Port creation failed, reference table exhausted\n");
  kfree(p_ptr);
  return ((void*)0);
 }

 p_ptr->publ.usr_handle = usr_handle;
 p_ptr->publ.max_pkt = MAX_PKT_DEFAULT;
 p_ptr->publ.ref = ref;
 msg = &p_ptr->publ.phdr;
 msg_init(msg, importance, TIPC_NAMED_MSG, LONG_H_SIZE, 0);
 msg_set_origport(msg, ref);
 p_ptr->last_in_seqno = 41;
 p_ptr->sent = 1;
 INIT_LIST_HEAD(&p_ptr->wait_list);
 INIT_LIST_HEAD(&p_ptr->subscription.nodesub_list);
 p_ptr->congested_link = ((void*)0);
 p_ptr->dispatcher = dispatcher;
 p_ptr->wakeup = wakeup;
 p_ptr->user_port = ((void*)0);
 k_init_timer(&p_ptr->timer, (Handler)port_timeout, ref);
 spin_lock_bh(&tipc_port_list_lock);
 INIT_LIST_HEAD(&p_ptr->publications);
 INIT_LIST_HEAD(&p_ptr->port_list);
 list_add_tail(&p_ptr->port_list, &ports);
 spin_unlock_bh(&tipc_port_list_lock);
 return &(p_ptr->publ);
}
