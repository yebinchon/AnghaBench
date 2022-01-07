
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ daddr; } ;
struct ip_tunnel_parm {int i_key; TYPE_1__ iph; } ;
struct ip_tunnel_net {struct hlist_head* tunnels; } ;
struct hlist_head {int dummy; } ;
typedef scalar_t__ __be32 ;


 unsigned int ip_tunnel_hash (struct ip_tunnel_net*,int ,scalar_t__) ;
 int ipv4_is_multicast (scalar_t__) ;

__attribute__((used)) static struct hlist_head *ip_bucket(struct ip_tunnel_net *itn,
        struct ip_tunnel_parm *parms)
{
 unsigned int h;
 __be32 remote;

 if (parms->iph.daddr && !ipv4_is_multicast(parms->iph.daddr))
  remote = parms->iph.daddr;
 else
  remote = 0;

 h = ip_tunnel_hash(itn, parms->i_key, remote);
 return &itn->tunnels[h];
}
