
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be32 ;


 int NIPQUAD (int ) ;
 int nf_nat_mangle_tcp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,char*,int ) ;
 int pr_debug (char*) ;
 int sprintf (char*,char*,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
mangle_eprt_packet(struct sk_buff *skb,
     __be32 newip,
     u_int16_t port,
     unsigned int matchoff,
     unsigned int matchlen,
     struct nf_conn *ct,
     enum ip_conntrack_info ctinfo)
{
 char buffer[sizeof("|1|255.255.255.255|65535|")];

 sprintf(buffer, "|1|%u.%u.%u.%u|%u|", NIPQUAD(newip), port);

 pr_debug("calling nf_nat_mangle_tcp_packet\n");

 return nf_nat_mangle_tcp_packet(skb, ct, ctinfo, matchoff,
     matchlen, buffer, strlen(buffer));
}
