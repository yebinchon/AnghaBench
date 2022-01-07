
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ connected; } ;
struct port {int timer; int wait_list; int port_list; struct port* user_port; int subscription; TYPE_1__ publ; } ;


 int EINVAL ;
 int TIPC_ERR_NO_PORT ;
 int dbg (char*,int ) ;
 int k_cancel_timer (int *) ;
 int k_term_timer (int *) ;
 int kfree (struct port*) ;
 int list_del (int *) ;
 struct sk_buff* port_build_peer_abort_msg (struct port*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_net_route_msg (struct sk_buff*) ;
 int tipc_nodesub_unsubscribe (int *) ;
 int tipc_port_list_lock ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;
 int tipc_ref_discard (int ) ;
 int tipc_reg_remove_port (struct port*) ;
 int tipc_withdraw (int ,int ,int *) ;

int tipc_deleteport(u32 ref)
{
 struct port *p_ptr;
 struct sk_buff *buf = ((void*)0);

 tipc_withdraw(ref, 0, ((void*)0));
 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return -EINVAL;

 tipc_ref_discard(ref);
 tipc_port_unlock(p_ptr);

 k_cancel_timer(&p_ptr->timer);
 if (p_ptr->publ.connected) {
  buf = port_build_peer_abort_msg(p_ptr, TIPC_ERR_NO_PORT);
  tipc_nodesub_unsubscribe(&p_ptr->subscription);
 }
 if (p_ptr->user_port) {
  tipc_reg_remove_port(p_ptr->user_port);
  kfree(p_ptr->user_port);
 }

 spin_lock_bh(&tipc_port_list_lock);
 list_del(&p_ptr->port_list);
 list_del(&p_ptr->wait_list);
 spin_unlock_bh(&tipc_port_list_lock);
 k_term_timer(&p_ptr->timer);
 kfree(p_ptr);
 dbg("Deleted port %u\n", ref);
 tipc_net_route_msg(buf);
 return 0;
}
