
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct link {int out_queue_size; struct sk_buff* last_out; struct sk_buff* first_out; TYPE_2__* owner; int next_out_no; scalar_t__ next_in_no; } ;
struct TYPE_3__ {int last_in; } ;
struct TYPE_4__ {TYPE_1__ bclink; } ;


 int mod (scalar_t__) ;
 int msg_set_bcast_ack (struct tipc_msg*,int ) ;
 int msg_set_word (struct tipc_msg*,int,int) ;

__attribute__((used)) static void link_add_to_outqueue(struct link *l_ptr,
     struct sk_buff *buf,
     struct tipc_msg *msg)
{
 u32 ack = mod(l_ptr->next_in_no - 1);
 u32 seqno = mod(l_ptr->next_out_no++);

 msg_set_word(msg, 2, ((ack << 16) | seqno));
 msg_set_bcast_ack(msg, l_ptr->owner->bclink.last_in);
 buf->next = ((void*)0);
 if (l_ptr->first_out) {
  l_ptr->last_out->next = buf;
  l_ptr->last_out = buf;
 } else
  l_ptr->first_out = l_ptr->last_out = buf;
 l_ptr->out_queue_size++;
}
