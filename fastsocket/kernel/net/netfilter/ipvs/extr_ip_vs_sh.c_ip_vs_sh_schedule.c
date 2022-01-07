
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_sh_bucket {int dummy; } ;
struct ip_vs_service {int af; scalar_t__ sched_data; } ;
struct ip_vs_iphdr {int saddr; } ;
struct ip_vs_dest {int flags; int port; int addr; int weight; } ;


 int IP_VS_DBG (int,char*) ;
 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ) ;
 int IP_VS_DEST_F_AVAILABLE ;
 int IP_VS_ERR_RL (char*) ;
 scalar_t__ atomic_read (int *) ;
 int ip_vs_fill_iphdr (int ,int ,struct ip_vs_iphdr*) ;
 struct ip_vs_dest* ip_vs_sh_get (int ,struct ip_vs_sh_bucket*,int *) ;
 scalar_t__ is_overloaded (struct ip_vs_dest*) ;
 int ntohs (int ) ;
 int skb_network_header (struct sk_buff const*) ;

__attribute__((used)) static struct ip_vs_dest *
ip_vs_sh_schedule(struct ip_vs_service *svc, const struct sk_buff *skb)
{
 struct ip_vs_dest *dest;
 struct ip_vs_sh_bucket *tbl;
 struct ip_vs_iphdr iph;

 ip_vs_fill_iphdr(svc->af, skb_network_header(skb), &iph);

 IP_VS_DBG(6, "ip_vs_sh_schedule(): Scheduling...\n");

 tbl = (struct ip_vs_sh_bucket *)svc->sched_data;
 dest = ip_vs_sh_get(svc->af, tbl, &iph.saddr);
 if (!dest
     || !(dest->flags & IP_VS_DEST_F_AVAILABLE)
     || atomic_read(&dest->weight) <= 0
     || is_overloaded(dest)) {
  IP_VS_ERR_RL("SH: no destination available\n");
  return ((void*)0);
 }

 IP_VS_DBG_BUF(6, "SH: source IP address %s --> server %s:%d\n",
        IP_VS_DBG_ADDR(svc->af, &iph.saddr),
        IP_VS_DBG_ADDR(svc->af, &dest->addr),
        ntohs(dest->port));

 return dest;
}
