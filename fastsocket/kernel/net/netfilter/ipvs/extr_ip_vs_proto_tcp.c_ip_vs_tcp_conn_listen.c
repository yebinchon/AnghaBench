
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_conn {size_t state; int lock; int timeout; } ;
struct TYPE_2__ {int * timeout_table; } ;


 size_t IP_VS_TCP_S_LISTEN ;
 TYPE_1__ ip_vs_protocol_tcp ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ip_vs_tcp_conn_listen(struct ip_vs_conn *cp)
{
 spin_lock(&cp->lock);
 cp->state = IP_VS_TCP_S_LISTEN;
 cp->timeout = ip_vs_protocol_tcp.timeout_table[IP_VS_TCP_S_LISTEN];
 spin_unlock(&cp->lock);
}
