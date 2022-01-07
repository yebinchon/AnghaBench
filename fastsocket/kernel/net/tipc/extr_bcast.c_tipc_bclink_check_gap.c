
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ gap_after; scalar_t__ gap_to; int last_in; int supported; } ;
struct tipc_node {TYPE_1__ bclink; } ;


 int bclink_send_nack (struct tipc_node*) ;
 int bclink_set_gap (struct tipc_node*) ;
 scalar_t__ less_eq (scalar_t__,int ) ;
 int mod (int ) ;

void tipc_bclink_check_gap(struct tipc_node *n_ptr, u32 last_sent)
{
 if (!n_ptr->bclink.supported ||
     less_eq(last_sent, mod(n_ptr->bclink.last_in)))
  return;

 bclink_set_gap(n_ptr);
 if (n_ptr->bclink.gap_after == n_ptr->bclink.gap_to)
  n_ptr->bclink.gap_to = last_sent;
 bclink_send_nack(n_ptr);
}
