
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int state; } ;
struct TYPE_8__ {int a4; } ;
struct TYPE_9__ {int flags; TYPE_3__ saddr; int mode; int family; } ;
struct TYPE_6__ {int a4; } ;
struct TYPE_7__ {TYPE_1__ daddr; int spi; int proto; } ;
struct xfrm_state {TYPE_5__ km; int tunnel_users; int mark; TYPE_4__ props; int sel; TYPE_2__ id; } ;


 int AF_INET ;
 int IPPROTO_IPIP ;
 int XFRM_STATE_DEAD ;
 int atomic_set (int *,int) ;
 int init_net ;
 int memcpy (int *,int *,int) ;
 scalar_t__ xfrm_init_state (struct xfrm_state*) ;
 struct xfrm_state* xfrm_state_alloc (int *) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static struct xfrm_state *ipcomp_tunnel_create(struct xfrm_state *x)
{
 struct xfrm_state *t;

 t = xfrm_state_alloc(&init_net);
 if (t == ((void*)0))
  goto out;

 t->id.proto = IPPROTO_IPIP;
 t->id.spi = x->props.saddr.a4;
 t->id.daddr.a4 = x->id.daddr.a4;
 memcpy(&t->sel, &x->sel, sizeof(t->sel));
 t->props.family = AF_INET;
 t->props.mode = x->props.mode;
 t->props.saddr.a4 = x->props.saddr.a4;
 t->props.flags = x->props.flags;
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
