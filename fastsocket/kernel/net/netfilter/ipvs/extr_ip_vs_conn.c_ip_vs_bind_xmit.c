
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int packet_xmit; } ;







 int IP_VS_FWD_METHOD (struct ip_vs_conn*) ;
 int ip_vs_bypass_xmit ;
 int ip_vs_dr_xmit ;
 int ip_vs_nat_xmit ;
 int ip_vs_null_xmit ;
 int ip_vs_tunnel_xmit ;

__attribute__((used)) static inline void ip_vs_bind_xmit(struct ip_vs_conn *cp)
{
 switch (IP_VS_FWD_METHOD(cp)) {
 case 129:
  cp->packet_xmit = ip_vs_nat_xmit;
  break;

 case 128:
  cp->packet_xmit = ip_vs_tunnel_xmit;
  break;

 case 131:
  cp->packet_xmit = ip_vs_dr_xmit;
  break;

 case 130:
  cp->packet_xmit = ip_vs_null_xmit;
  break;

 case 132:
  cp->packet_xmit = ip_vs_bypass_xmit;
  break;
 }
}
