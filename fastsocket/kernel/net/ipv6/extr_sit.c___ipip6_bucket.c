
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sit_net {struct ip_tunnel*** tunnels; } ;
struct TYPE_2__ {scalar_t__ saddr; scalar_t__ daddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; } ;
struct ip_tunnel {int dummy; } ;
typedef scalar_t__ __be32 ;


 unsigned int HASH (scalar_t__) ;

__attribute__((used)) static struct ip_tunnel **__ipip6_bucket(struct sit_net *sitn,
  struct ip_tunnel_parm *parms)
{
 __be32 remote = parms->iph.daddr;
 __be32 local = parms->iph.saddr;
 unsigned h = 0;
 int prio = 0;

 if (remote) {
  prio |= 2;
  h ^= HASH(remote);
 }
 if (local) {
  prio |= 1;
  h ^= HASH(local);
 }
 return &sitn->tunnels[prio][h];
}
