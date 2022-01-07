
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_queue_sz; int msg_lengths_total; int * msg_length_profile; int msg_length_counts; int queue_sz_counts; int accu_queue_sz; } ;
struct link {scalar_t__ out_queue_size; int owner; scalar_t__ next_out; TYPE_1__ stats; scalar_t__ first_out; } ;


 scalar_t__ FIRST_FRAGMENT ;
 scalar_t__ MSG_FRAGMENTER ;
 int TIMEOUT_EVT ;
 struct tipc_msg* buf_msg (scalar_t__) ;
 int link_check_defragm_bufs (struct link*) ;
 int link_state_event (struct link*,int ) ;
 struct tipc_msg* msg_get_wrapped (struct tipc_msg*) ;
 int msg_size (struct tipc_msg*) ;
 scalar_t__ msg_type (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 int tipc_link_push_queue (struct link*) ;
 int tipc_node_lock (int ) ;
 int tipc_node_unlock (int ) ;

__attribute__((used)) static void link_timeout(struct link *l_ptr)
{
 tipc_node_lock(l_ptr->owner);



 l_ptr->stats.accu_queue_sz += l_ptr->out_queue_size;
 l_ptr->stats.queue_sz_counts++;

 if (l_ptr->out_queue_size > l_ptr->stats.max_queue_sz)
  l_ptr->stats.max_queue_sz = l_ptr->out_queue_size;

 if (l_ptr->first_out) {
  struct tipc_msg *msg = buf_msg(l_ptr->first_out);
  u32 length = msg_size(msg);

  if ((msg_user(msg) == MSG_FRAGMENTER)
      && (msg_type(msg) == FIRST_FRAGMENT)) {
   length = msg_size(msg_get_wrapped(msg));
  }
  if (length) {
   l_ptr->stats.msg_lengths_total += length;
   l_ptr->stats.msg_length_counts++;
   if (length <= 64)
    l_ptr->stats.msg_length_profile[0]++;
   else if (length <= 256)
    l_ptr->stats.msg_length_profile[1]++;
   else if (length <= 1024)
    l_ptr->stats.msg_length_profile[2]++;
   else if (length <= 4096)
    l_ptr->stats.msg_length_profile[3]++;
   else if (length <= 16384)
    l_ptr->stats.msg_length_profile[4]++;
   else if (length <= 32768)
    l_ptr->stats.msg_length_profile[5]++;
   else
    l_ptr->stats.msg_length_profile[6]++;
  }
 }



 link_check_defragm_bufs(l_ptr);

 link_state_event(l_ptr, TIMEOUT_EVT);

 if (l_ptr->next_out)
  tipc_link_push_queue(l_ptr);

 tipc_node_unlock(l_ptr->owner);
}
