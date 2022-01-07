
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mark; } ;
struct ip_vs_service {int flags; scalar_t__ port; int af; TYPE_1__* scheduler; int fwmark; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int daddr; int saddr; int len; } ;
struct ip_vs_dest {scalar_t__ port; int addr; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int refcnt; int flags; int dport; int daddr; int vport; int vaddr; int cport; int caddr; } ;
typedef int _ports ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {struct ip_vs_dest* (* schedule ) (struct ip_vs_service*,struct sk_buff*) ;} ;


 scalar_t__ IPPROTO_UDP ;
 unsigned int IP_VS_CONN_F_ONE_PACKET ;
 int IP_VS_DBG (int,char*) ;
 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int IP_VS_SVC_F_ONEPACKET ;
 int IP_VS_SVC_F_PERSISTENT ;
 int atomic_read (int *) ;
 int ip_vs_conn_fill_param (int ,scalar_t__,int *,scalar_t__,int *,scalar_t__,struct ip_vs_conn_param*) ;
 struct ip_vs_conn* ip_vs_conn_new (struct ip_vs_conn_param*,int *,scalar_t__,unsigned int,struct ip_vs_dest*,int ) ;
 int ip_vs_conn_stats (struct ip_vs_conn*,struct ip_vs_service*) ;
 int ip_vs_fill_iphdr (int ,int ,struct ip_vs_iphdr*) ;
 int ip_vs_fwd_tag (struct ip_vs_conn*) ;
 struct ip_vs_conn* ip_vs_sched_persist (struct ip_vs_service*,struct sk_buff*,scalar_t__,scalar_t__) ;
 int ntohs (int ) ;
 int pr_err (char*) ;
 scalar_t__* skb_header_pointer (struct sk_buff*,int ,int,scalar_t__*) ;
 int skb_network_header (struct sk_buff*) ;
 struct ip_vs_dest* stub1 (struct ip_vs_service*,struct sk_buff*) ;

struct ip_vs_conn *
ip_vs_schedule(struct ip_vs_service *svc, struct sk_buff *skb)
{
 struct ip_vs_conn *cp = ((void*)0);
 struct ip_vs_iphdr iph;
 struct ip_vs_dest *dest;
 __be16 _ports[2], *pptr;
 unsigned int flags;

 ip_vs_fill_iphdr(svc->af, skb_network_header(skb), &iph);
 pptr = skb_header_pointer(skb, iph.len, sizeof(_ports), _ports);
 if (pptr == ((void*)0))
  return ((void*)0);




 if (svc->flags & IP_VS_SVC_F_PERSISTENT) {
  return ip_vs_sched_persist(svc, skb, pptr[0], pptr[1]);
 }




 if (!svc->fwmark && pptr[1] != svc->port) {
  if (!svc->port)
   pr_err("Schedule: port zero only supported "
          "in persistent services, "
          "check your ipvs configuration\n");
  return ((void*)0);
 }

 dest = svc->scheduler->schedule(svc, skb);
 if (dest == ((void*)0)) {
  IP_VS_DBG(1, "Schedule: no dest found.\n");
  return ((void*)0);
 }

 flags = (svc->flags & IP_VS_SVC_F_ONEPACKET
   && iph.protocol == IPPROTO_UDP)?
  IP_VS_CONN_F_ONE_PACKET : 0;




 {
  struct ip_vs_conn_param p;
  ip_vs_conn_fill_param(svc->af, iph.protocol, &iph.saddr,
          pptr[0], &iph.daddr, pptr[1], &p);
  cp = ip_vs_conn_new(&p, &dest->addr,
        dest->port ? dest->port : pptr[1],
        flags, dest, skb->mark);
  if (!cp)
   return ((void*)0);
 }

 IP_VS_DBG_BUF(6, "Schedule fwd:%c c:%s:%u v:%s:%u "
        "d:%s:%u conn->flags:%X conn->refcnt:%d\n",
        ip_vs_fwd_tag(cp),
        IP_VS_DBG_ADDR(svc->af, &cp->caddr), ntohs(cp->cport),
        IP_VS_DBG_ADDR(svc->af, &cp->vaddr), ntohs(cp->vport),
        IP_VS_DBG_ADDR(svc->af, &cp->daddr), ntohs(cp->dport),
        cp->flags, atomic_read(&cp->refcnt));

 ip_vs_conn_stats(cp, svc);
 return cp;
}
