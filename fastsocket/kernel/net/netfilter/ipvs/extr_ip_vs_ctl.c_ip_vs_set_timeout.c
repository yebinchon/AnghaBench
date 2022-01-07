
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip_vs_timeout_user {int tcp_timeout; int tcp_fin_timeout; int udp_timeout; } ;
struct TYPE_4__ {void** timeout_table; } ;
struct TYPE_3__ {void** timeout_table; } ;


 void* HZ ;
 int IP_VS_DBG (int,char*,int,int,int) ;
 size_t IP_VS_TCP_S_ESTABLISHED ;
 size_t IP_VS_TCP_S_FIN_WAIT ;
 size_t IP_VS_UDP_S_NORMAL ;
 TYPE_2__ ip_vs_protocol_tcp ;
 TYPE_1__ ip_vs_protocol_udp ;

__attribute__((used)) static int ip_vs_set_timeout(struct ip_vs_timeout_user *u)
{
 IP_VS_DBG(2, "Setting timeout tcp:%d tcpfin:%d udp:%d\n",
    u->tcp_timeout,
    u->tcp_fin_timeout,
    u->udp_timeout);
 return 0;
}
