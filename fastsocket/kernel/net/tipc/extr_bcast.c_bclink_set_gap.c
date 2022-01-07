
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* gap_to; scalar_t__ last_in; void* gap_after; struct sk_buff* deferred_head; } ;
struct tipc_node {TYPE_1__ bclink; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ buf_seqno (struct sk_buff*) ;
 void* mod (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void bclink_set_gap(struct tipc_node *n_ptr)
{
 struct sk_buff *buf = n_ptr->bclink.deferred_head;

 n_ptr->bclink.gap_after = n_ptr->bclink.gap_to =
  mod(n_ptr->bclink.last_in);
 if (unlikely(buf != ((void*)0)))
  n_ptr->bclink.gap_to = mod(buf_seqno(buf) - 1);
}
