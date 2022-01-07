
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip6_tnl_parm {int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;
struct TYPE_2__ {int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;
struct ip6_tnl {TYPE_1__ parms; } ;


 int ip6_tnl_dst_reset (struct ip6_tnl*) ;
 int ip6_tnl_link_config (struct ip6_tnl*) ;
 int ipv6_addr_copy (int *,int *) ;

__attribute__((used)) static int
ip6_tnl_change(struct ip6_tnl *t, struct ip6_tnl_parm *p)
{
 ipv6_addr_copy(&t->parms.laddr, &p->laddr);
 ipv6_addr_copy(&t->parms.raddr, &p->raddr);
 t->parms.flags = p->flags;
 t->parms.hop_limit = p->hop_limit;
 t->parms.encap_limit = p->encap_limit;
 t->parms.flowinfo = p->flowinfo;
 t->parms.link = p->link;
 t->parms.proto = p->proto;
 ip6_tnl_dst_reset(t);
 ip6_tnl_link_config(t);
 return 0;
}
