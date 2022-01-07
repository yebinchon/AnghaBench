
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int timeout_table; } ;


 int IP_VS_INIT_HASH_TABLE (int ) ;
 int tcp_apps ;
 int tcp_timeouts ;

__attribute__((used)) static void ip_vs_tcp_init(struct ip_vs_protocol *pp)
{
 IP_VS_INIT_HASH_TABLE(tcp_apps);
 pp->timeout_table = tcp_timeouts;
}
