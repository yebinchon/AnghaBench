
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {struct sk_buff* next; } ;
struct link {scalar_t__ state; scalar_t__ next_in_no; int checkpoint; int next_out_no; int addr; scalar_t__ stale_count; scalar_t__ fsm_msg_cnt; int * newest_deferred_in; struct sk_buff* oldest_deferred_in; scalar_t__ deferred_inqueue_sz; scalar_t__ unacked_window; int * next_out; int * first_out; int * last_out; scalar_t__ retransm_queue_size; scalar_t__ retransm_queue_head; int waiting_ports; struct sk_buff* proto_msg_queue; int exp_msg_count; scalar_t__ reset_checkpoint; TYPE_1__* owner; int name; int b_ptr; int peer_session; int pmsg; } ;
struct TYPE_3__ {scalar_t__ permit_changeover; } ;


 int INVALID_SESSION ;
 scalar_t__ RESET_RESET ;
 scalar_t__ RESET_UNKNOWN ;
 int START_CHANGEOVER ;
 int TIPC_CONS ;
 int buf_discard (struct sk_buff*) ;
 int dbg_link_dump () ;
 int dbg_link_state (char*) ;
 int in_own_cluster (int ) ;
 int link_init_max_pkt (struct link*) ;
 int link_release_outqueue (struct link*) ;
 int link_reset_statistics (struct link*) ;
 int link_send_event (int ,struct link*,int ) ;
 int list_empty (int *) ;
 int msg_session (int ) ;
 int msg_set_session (int ,int) ;
 int tipc_bearer_remove_dest (int ,int ) ;
 int tipc_cfg_link_event ;
 int tipc_disc_link_event ;
 int tipc_link_is_active (struct link*) ;
 int tipc_link_wakeup_ports (struct link*,int) ;
 scalar_t__ tipc_node_has_active_links (TYPE_1__*) ;
 int tipc_node_link_down (TYPE_1__*,struct link*) ;
 int tipc_printf (int ,char*,int ) ;

void tipc_link_reset(struct link *l_ptr)
{
 struct sk_buff *buf;
 u32 prev_state = l_ptr->state;
 u32 checkpoint = l_ptr->next_in_no;
 int was_active_link = tipc_link_is_active(l_ptr);

 msg_set_session(l_ptr->pmsg, ((msg_session(l_ptr->pmsg) + 1) & 0xffff));


 l_ptr->peer_session = INVALID_SESSION;


 link_init_max_pkt(l_ptr);

 l_ptr->state = RESET_UNKNOWN;
 dbg_link_state("Resetting Link\n");

 if ((prev_state == RESET_UNKNOWN) || (prev_state == RESET_RESET))
  return;

 tipc_node_link_down(l_ptr->owner, l_ptr);
 tipc_bearer_remove_dest(l_ptr->b_ptr, l_ptr->addr);




 if (was_active_link && tipc_node_has_active_links(l_ptr->owner) &&
     l_ptr->owner->permit_changeover) {
  l_ptr->reset_checkpoint = checkpoint;
  l_ptr->exp_msg_count = START_CHANGEOVER;
 }



 link_release_outqueue(l_ptr);
 buf_discard(l_ptr->proto_msg_queue);
 l_ptr->proto_msg_queue = ((void*)0);
 buf = l_ptr->oldest_deferred_in;
 while (buf) {
  struct sk_buff *next = buf->next;
  buf_discard(buf);
  buf = next;
 }
 if (!list_empty(&l_ptr->waiting_ports))
  tipc_link_wakeup_ports(l_ptr, 1);

 l_ptr->retransm_queue_head = 0;
 l_ptr->retransm_queue_size = 0;
 l_ptr->last_out = ((void*)0);
 l_ptr->first_out = ((void*)0);
 l_ptr->next_out = ((void*)0);
 l_ptr->unacked_window = 0;
 l_ptr->checkpoint = 1;
 l_ptr->next_out_no = 1;
 l_ptr->deferred_inqueue_sz = 0;
 l_ptr->oldest_deferred_in = ((void*)0);
 l_ptr->newest_deferred_in = ((void*)0);
 l_ptr->fsm_msg_cnt = 0;
 l_ptr->stale_count = 0;
 link_reset_statistics(l_ptr);

 link_send_event(tipc_cfg_link_event, l_ptr, 0);
 if (!in_own_cluster(l_ptr->addr))
  link_send_event(tipc_disc_link_event, l_ptr, 0);
}
