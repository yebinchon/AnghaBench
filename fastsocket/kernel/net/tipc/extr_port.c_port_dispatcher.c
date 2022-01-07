
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_port {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
typedef int Handler ;


 struct sk_buff* msg_queue_head ;
 struct sk_buff* msg_queue_tail ;
 scalar_t__ port_dispatcher_sigh ;
 int queue_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_k_signal (int ,int ) ;

__attribute__((used)) static u32 port_dispatcher(struct tipc_port *dummy, struct sk_buff *buf)
{
 buf->next = ((void*)0);
 spin_lock_bh(&queue_lock);
 if (msg_queue_head) {
  msg_queue_tail->next = buf;
  msg_queue_tail = buf;
 } else {
  msg_queue_tail = msg_queue_head = buf;
  tipc_k_signal((Handler)port_dispatcher_sigh, 0);
 }
 spin_unlock_bh(&queue_lock);
 return 0;
}
