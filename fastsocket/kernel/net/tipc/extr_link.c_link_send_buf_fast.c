
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int bearer_congs; } ;
struct link {struct sk_buff* next_out; TYPE_1__ stats; TYPE_2__* b_ptr; scalar_t__ unacked_window; int media_addr; } ;
struct TYPE_5__ {int cong_links; } ;


 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int dbg (char*) ;
 scalar_t__ likely (int) ;
 int link_add_to_outqueue (struct link*,struct sk_buff*,struct tipc_msg*) ;
 int link_congested (struct link*) ;
 scalar_t__ link_max_pkt (struct link*) ;
 int list_empty (int *) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 scalar_t__ msg_size (struct tipc_msg*) ;
 int tipc_bearer_schedule (TYPE_2__*,struct link*) ;
 int tipc_bearer_send (TYPE_2__*,struct sk_buff*,int *) ;
 int tipc_link_send_buf (struct link*,struct sk_buff*) ;

__attribute__((used)) static int link_send_buf_fast(struct link *l_ptr, struct sk_buff *buf,
         u32 *used_max_pkt)
{
 struct tipc_msg *msg = buf_msg(buf);
 int res = msg_data_sz(msg);

 if (likely(!link_congested(l_ptr))) {
  if (likely(msg_size(msg) <= link_max_pkt(l_ptr))) {
   if (likely(list_empty(&l_ptr->b_ptr->cong_links))) {
    link_add_to_outqueue(l_ptr, buf, msg);
    if (likely(tipc_bearer_send(l_ptr->b_ptr, buf,
           &l_ptr->media_addr))) {
     l_ptr->unacked_window = 0;
     msg_dbg(msg,"SENT_FAST:");
     return res;
    }
    dbg("failed sent fast...\n");
    tipc_bearer_schedule(l_ptr->b_ptr, l_ptr);
    l_ptr->stats.bearer_congs++;
    l_ptr->next_out = buf;
    return res;
   }
  }
  else
   *used_max_pkt = link_max_pkt(l_ptr);
 }
 return tipc_link_send_buf(l_ptr, buf);
}
