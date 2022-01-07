
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union nf_inet_addr {int ip; int in6; } ;
struct sk_buff {int mark; } ;
struct ip_vs_service {scalar_t__ af; int netmask; scalar_t__ port; int flags; int timeout; TYPE_1__* scheduler; scalar_t__ fwmark; } ;
struct ip_vs_iphdr {int protocol; union nf_inet_addr daddr; union nf_inet_addr saddr; } ;
struct ip_vs_dest {scalar_t__ port; int addr; } ;
struct ip_vs_conn_param {int pe_data; } ;
struct ip_vs_conn {struct ip_vs_dest* dest; int timeout; } ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {struct ip_vs_dest* (* schedule ) (struct ip_vs_service*,struct sk_buff*) ;} ;


 scalar_t__ AF_INET6 ;
 scalar_t__ FTPPORT ;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;
 unsigned int IP_VS_CONN_F_ONE_PACKET ;
 unsigned int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_DBG (int,char*) ;
 int IP_VS_DBG_ADDR (scalar_t__,union nf_inet_addr*) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,int ) ;
 int IP_VS_SVC_F_ONEPACKET ;
 int htonl (scalar_t__) ;
 int ip_vs_check_template (struct ip_vs_conn*) ;
 int ip_vs_conn_fill_param (scalar_t__,int,union nf_inet_addr*,scalar_t__,union nf_inet_addr*,scalar_t__,struct ip_vs_conn_param*) ;
 int ip_vs_conn_fill_param_persist (struct ip_vs_service*,struct sk_buff*,int,union nf_inet_addr*,int ,union nf_inet_addr const*,scalar_t__,struct ip_vs_conn_param*) ;
 struct ip_vs_conn* ip_vs_conn_new (struct ip_vs_conn_param*,int *,scalar_t__,unsigned int,struct ip_vs_dest*,int ) ;
 int ip_vs_conn_put (struct ip_vs_conn*) ;
 int ip_vs_conn_stats (struct ip_vs_conn*,struct ip_vs_service*) ;
 int ip_vs_control_add (struct ip_vs_conn*,struct ip_vs_conn*) ;
 struct ip_vs_conn* ip_vs_ct_in_get (struct ip_vs_conn_param*) ;
 int ip_vs_fill_iphdr (scalar_t__,int ,struct ip_vs_iphdr*) ;
 int ipv6_addr_prefix (int *,int *,int) ;
 int kfree (int ) ;
 int ntohs (scalar_t__) ;
 int skb_network_header (struct sk_buff*) ;
 struct ip_vs_dest* stub1 (struct ip_vs_service*,struct sk_buff*) ;

__attribute__((used)) static struct ip_vs_conn *
ip_vs_sched_persist(struct ip_vs_service *svc,
      struct sk_buff *skb,
      __be16 src_port, __be16 dst_port)
{
 struct ip_vs_conn *cp = ((void*)0);
 struct ip_vs_iphdr iph;
 struct ip_vs_dest *dest;
 struct ip_vs_conn *ct;
 __be16 dport = 0;
 unsigned int flags;
 struct ip_vs_conn_param param;
 const union nf_inet_addr fwmark = { .ip = htonl(svc->fwmark) };
 union nf_inet_addr snet;


 ip_vs_fill_iphdr(svc->af, skb_network_header(skb), &iph);







  snet.ip = iph.saddr.ip & svc->netmask;

 IP_VS_DBG_BUF(6, "p-schedule: src %s:%u dest %s:%u "
        "mnet %s\n",
        IP_VS_DBG_ADDR(svc->af, &iph.saddr), ntohs(src_port),
        IP_VS_DBG_ADDR(svc->af, &iph.daddr), ntohs(dst_port),
        IP_VS_DBG_ADDR(svc->af, &snet));
 {
  int protocol = iph.protocol;
  const union nf_inet_addr *vaddr = &iph.daddr;
  __be16 vport = 0;

  if (dst_port == svc->port) {





   if (svc->port != FTPPORT)
    vport = dst_port;
  } else {







   if (svc->fwmark) {
    protocol = IPPROTO_IP;
    vaddr = &fwmark;
   }
  }
  ip_vs_conn_fill_param_persist(svc, skb, protocol, &snet, 0,
           vaddr, vport, &param);
 }


 ct = ip_vs_ct_in_get(&param);
 if (!ct || !ip_vs_check_template(ct)) {



  dest = svc->scheduler->schedule(svc, skb);
  if (!dest) {
   IP_VS_DBG(1, "p-schedule: no dest found.\n");
   kfree(param.pe_data);
   return ((void*)0);
  }

  if (dst_port == svc->port && svc->port != FTPPORT)
   dport = dest->port;





  ct = ip_vs_conn_new(&param, &dest->addr, dport,
        IP_VS_CONN_F_TEMPLATE, dest, skb->mark);
  if (ct == ((void*)0)) {
   kfree(param.pe_data);
   return ((void*)0);
  }

  ct->timeout = svc->timeout;
 } else {

  dest = ct->dest;
  kfree(param.pe_data);
 }

 dport = dst_port;
 if (dport == svc->port && dest->port)
  dport = dest->port;

 flags = (svc->flags & IP_VS_SVC_F_ONEPACKET
   && iph.protocol == IPPROTO_UDP)?
  IP_VS_CONN_F_ONE_PACKET : 0;




 ip_vs_conn_fill_param(svc->af, iph.protocol, &iph.saddr, src_port,
         &iph.daddr, dst_port, &param);

 cp = ip_vs_conn_new(&param, &dest->addr, dport, flags, dest, skb->mark);
 if (cp == ((void*)0)) {
  ip_vs_conn_put(ct);
  return ((void*)0);
 }




 ip_vs_control_add(cp, ct);
 ip_vs_conn_put(ct);

 ip_vs_conn_stats(cp, svc);
 return cp;
}
