
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int appcnt; } ;
struct ip_vs_dest {int dummy; } ;
struct ip_vs_conn {scalar_t__ af; int protocol; int * packet_xmit; scalar_t__ app; int flags; int fwmark; int vport; int vaddr; int dport; int daddr; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ atomic_read (int *) ;
 int ip_vs_bind_app (struct ip_vs_conn*,struct ip_vs_protocol*) ;
 int ip_vs_bind_dest (struct ip_vs_conn*,struct ip_vs_dest*) ;
 int ip_vs_bind_xmit (struct ip_vs_conn*) ;
 int ip_vs_bind_xmit_v6 (struct ip_vs_conn*) ;
 struct ip_vs_dest* ip_vs_find_dest (scalar_t__,int *,int ,int *,int ,int ,int ,int ) ;
 struct ip_vs_protocol* ip_vs_proto_get (int ) ;
 int ip_vs_unbind_app (struct ip_vs_conn*) ;

struct ip_vs_dest *ip_vs_try_bind_dest(struct ip_vs_conn *cp)
{
 struct ip_vs_dest *dest;

 dest = ip_vs_find_dest(cp->af, &cp->daddr,
          cp->dport, &cp->vaddr, cp->vport,
          cp->protocol, cp->fwmark, cp->flags);
 if (dest) {
  struct ip_vs_protocol *pp;



  if (cp->app)
   ip_vs_unbind_app(cp);

  ip_vs_bind_dest(cp, dest);


  cp->packet_xmit = ((void*)0);





   ip_vs_bind_xmit(cp);







  pp = ip_vs_proto_get(cp->protocol);
  if (pp && atomic_read(&pp->appcnt))
   ip_vs_bind_app(cp, pp);

 }
 return dest;
}
