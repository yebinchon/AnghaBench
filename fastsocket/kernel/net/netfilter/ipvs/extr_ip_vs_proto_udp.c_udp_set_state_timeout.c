
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int timeout_table; } ;


 int IP_VS_UDP_S_LAST ;
 int ip_vs_set_state_timeout (int ,int ,int ,char*,int) ;
 int udp_state_name_table ;

__attribute__((used)) static int
udp_set_state_timeout(struct ip_vs_protocol *pp, char *sname, int to)
{
 return ip_vs_set_state_timeout(pp->timeout_table, IP_VS_UDP_S_LAST,
           udp_state_name_table, sname, to);
}
