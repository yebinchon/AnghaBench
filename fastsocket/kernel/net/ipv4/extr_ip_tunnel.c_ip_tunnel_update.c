
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {scalar_t__ type; int mtu; int broadcast; int dev_addr; } ;
struct TYPE_5__ {int frag_off; int tos; int ttl; int daddr; int saddr; } ;
struct ip_tunnel_parm {scalar_t__ link; TYPE_2__ iph; int o_key; int i_key; } ;
struct ip_tunnel_net {int dummy; } ;
struct TYPE_4__ {int frag_off; int tos; int ttl; int daddr; int saddr; } ;
struct TYPE_6__ {scalar_t__ link; TYPE_1__ iph; int o_key; int i_key; } ;
struct ip_tunnel {TYPE_3__ parms; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ip_tunnel_add (struct ip_tunnel_net*,struct ip_tunnel*) ;
 int ip_tunnel_bind_dev (struct net_device*) ;
 int ip_tunnel_del (struct ip_tunnel*) ;
 int memcpy (int ,int *,int) ;
 int netdev_state_change (struct net_device*) ;

__attribute__((used)) static void ip_tunnel_update(struct ip_tunnel_net *itn,
        struct ip_tunnel *t,
        struct net_device *dev,
        struct ip_tunnel_parm *p,
        bool set_mtu)
{
 ip_tunnel_del(t);
 t->parms.iph.saddr = p->iph.saddr;
 t->parms.iph.daddr = p->iph.daddr;
 t->parms.i_key = p->i_key;
 t->parms.o_key = p->o_key;
 if (dev->type != ARPHRD_ETHER) {
  memcpy(dev->dev_addr, &p->iph.saddr, 4);
  memcpy(dev->broadcast, &p->iph.daddr, 4);
 }
 ip_tunnel_add(itn, t);

 t->parms.iph.ttl = p->iph.ttl;
 t->parms.iph.tos = p->iph.tos;
 t->parms.iph.frag_off = p->iph.frag_off;

 if (t->parms.link != p->link) {
  int mtu;

  t->parms.link = p->link;
  mtu = ip_tunnel_bind_dev(dev);
  if (set_mtu)
   dev->mtu = mtu;
 }
 netdev_state_change(dev);
}
