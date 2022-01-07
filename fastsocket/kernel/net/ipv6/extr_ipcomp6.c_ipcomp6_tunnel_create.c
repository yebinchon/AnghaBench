
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_10__ {int state; } ;
struct TYPE_8__ {int * a6; } ;
struct TYPE_9__ {TYPE_3__ saddr; int mode; int family; } ;
struct TYPE_6__ {int * a6; } ;
struct TYPE_7__ {TYPE_1__ daddr; int spi; int proto; } ;
struct xfrm_state {TYPE_5__ km; int tunnel_users; int mark; TYPE_4__ props; int sel; TYPE_2__ id; } ;
struct in6_addr {int dummy; } ;


 int AF_INET6 ;
 int IPPROTO_IPV6 ;
 int XFRM_STATE_DEAD ;
 int atomic_set (int *,int) ;
 int init_net ;
 int memcpy (int *,int *,int) ;
 int xfrm6_tunnel_alloc_spi (int *) ;
 scalar_t__ xfrm_init_state (struct xfrm_state*) ;
 struct xfrm_state* xfrm_state_alloc (int *) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static struct xfrm_state *ipcomp6_tunnel_create(struct xfrm_state *x)
{
 struct xfrm_state *t = ((void*)0);

 t = xfrm_state_alloc(&init_net);
 if (!t)
  goto out;

 t->id.proto = IPPROTO_IPV6;
 t->id.spi = xfrm6_tunnel_alloc_spi((xfrm_address_t *)&x->props.saddr);
 if (!t->id.spi)
  goto error;

 memcpy(t->id.daddr.a6, x->id.daddr.a6, sizeof(struct in6_addr));
 memcpy(&t->sel, &x->sel, sizeof(t->sel));
 t->props.family = AF_INET6;
 t->props.mode = x->props.mode;
 memcpy(t->props.saddr.a6, x->props.saddr.a6, sizeof(struct in6_addr));
 memcpy(&t->mark, &x->mark, sizeof(t->mark));

 if (xfrm_init_state(t))
  goto error;

 atomic_set(&t->tunnel_users, 1);

out:
 return t;

error:
 t->km.state = XFRM_STATE_DEAD;
 xfrm_state_put(t);
 t = ((void*)0);
 goto out;
}
