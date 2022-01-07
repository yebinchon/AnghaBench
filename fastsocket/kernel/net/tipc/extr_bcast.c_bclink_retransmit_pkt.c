
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_3__ {struct sk_buff* first_out; } ;


 TYPE_1__* bcl ;
 int buf_seqno (struct sk_buff*) ;
 scalar_t__ less_eq (int ,scalar_t__) ;
 int mod (scalar_t__) ;
 int tipc_link_retransmit (TYPE_1__*,struct sk_buff*,int ) ;

__attribute__((used)) static void bclink_retransmit_pkt(u32 after, u32 to)
{
 struct sk_buff *buf;

 buf = bcl->first_out;
 while (buf && less_eq(buf_seqno(buf), after)) {
  buf = buf->next;
 }
 tipc_link_retransmit(bcl, buf, mod(to - after));
}
