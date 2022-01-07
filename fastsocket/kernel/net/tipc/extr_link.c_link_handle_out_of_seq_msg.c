
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int duplicates; int deferred_recv; } ;
struct link {int deferred_inqueue_sz; TYPE_1__ stats; int newest_deferred_in; int oldest_deferred_in; int next_in_no; int checkpoint; } ;


 scalar_t__ LINK_PROTOCOL ;
 int STATE_MSG ;
 int buf_discard (struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int dbg (char*,int ,int ,int ) ;
 scalar_t__ less (int ,int ) ;
 scalar_t__ likely (int) ;
 int link_recv_proto_msg (struct link*,struct sk_buff*) ;
 int mod (int ) ;
 int msg_seqno (int ) ;
 scalar_t__ msg_user (int ) ;
 scalar_t__ tipc_link_defer_pkt (int *,int *,struct sk_buff*) ;
 int tipc_link_send_proto_msg (struct link*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void link_handle_out_of_seq_msg(struct link *l_ptr,
           struct sk_buff *buf)
{
 u32 seq_no = msg_seqno(buf_msg(buf));

 if (likely(msg_user(buf_msg(buf)) == LINK_PROTOCOL)) {
  link_recv_proto_msg(l_ptr, buf);
  return;
 }

 dbg("rx OOS msg: seq_no %u, expecting %u (%u)\n",
     seq_no, mod(l_ptr->next_in_no), l_ptr->next_in_no);



 l_ptr->checkpoint--;






 if (less(seq_no, mod(l_ptr->next_in_no))) {
  l_ptr->stats.duplicates++;
  buf_discard(buf);
  return;
 }

 if (tipc_link_defer_pkt(&l_ptr->oldest_deferred_in,
    &l_ptr->newest_deferred_in, buf)) {
  l_ptr->deferred_inqueue_sz++;
  l_ptr->stats.deferred_recv++;
  if ((l_ptr->deferred_inqueue_sz % 16) == 1)
   tipc_link_send_proto_msg(l_ptr, STATE_MSG, 0, 0, 0, 0, 0);
 } else
  l_ptr->stats.duplicates++;
}
