
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ acked; scalar_t__ supported; } ;
struct tipc_node {TYPE_1__ bclink; } ;


 scalar_t__ tipc_bclink_get_last_sent () ;

u32 tipc_bclink_acks_missing(struct tipc_node *n_ptr)
{
 return (n_ptr->bclink.supported &&
  (tipc_bclink_get_last_sent() != n_ptr->bclink.acked));
}
