
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int timeout_table; } ;


 int IP_VS_INIT_HASH_TABLE (int ) ;
 int udp_apps ;
 int udp_timeouts ;

__attribute__((used)) static void udp_init(struct ip_vs_protocol *pp)
{
 IP_VS_INIT_HASH_TABLE(udp_apps);
 pp->timeout_table = udp_timeouts;
}
