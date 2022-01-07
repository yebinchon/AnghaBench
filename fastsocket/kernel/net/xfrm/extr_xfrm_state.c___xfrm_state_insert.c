
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int * next; } ;
struct TYPE_8__ {int family; int saddr; int reqid; } ;
struct TYPE_7__ {int proto; int spi; int daddr; } ;
struct TYPE_6__ {int all; } ;
struct xfrm_state {TYPE_5__ bydst; scalar_t__ replay_maxage; int rtimer; int timer; TYPE_5__ byspi; TYPE_3__ props; TYPE_2__ id; TYPE_5__ bysrc; TYPE_1__ km; } ;
struct TYPE_9__ {int state_num; int km_waitq; scalar_t__ state_byspi; scalar_t__ state_bysrc; scalar_t__ state_bydst; int state_all; } ;
struct net {TYPE_4__ xfrm; } ;


 scalar_t__ HZ ;
 int hlist_add_head (TYPE_5__*,scalar_t__) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int mod_timer (int *,scalar_t__) ;
 int wake_up (int *) ;
 unsigned int xfrm_dst_hash (struct net*,int *,int *,int ,int ) ;
 int xfrm_hash_grow_check (struct net*,int ) ;
 unsigned int xfrm_spi_hash (struct net*,int *,int ,int ,int ) ;
 unsigned int xfrm_src_hash (struct net*,int *,int *,int ) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static void __xfrm_state_insert(struct xfrm_state *x)
{
 struct net *net = xs_net(x);
 unsigned int h;

 list_add(&x->km.all, &net->xfrm.state_all);

 h = xfrm_dst_hash(net, &x->id.daddr, &x->props.saddr,
     x->props.reqid, x->props.family);
 hlist_add_head(&x->bydst, net->xfrm.state_bydst+h);

 h = xfrm_src_hash(net, &x->id.daddr, &x->props.saddr, x->props.family);
 hlist_add_head(&x->bysrc, net->xfrm.state_bysrc+h);

 if (x->id.spi) {
  h = xfrm_spi_hash(net, &x->id.daddr, x->id.spi, x->id.proto,
      x->props.family);

  hlist_add_head(&x->byspi, net->xfrm.state_byspi+h);
 }

 mod_timer(&x->timer, jiffies + HZ);
 if (x->replay_maxage)
  mod_timer(&x->rtimer, jiffies + x->replay_maxage);

 wake_up(&net->xfrm.km_waitq);

 net->xfrm.state_num++;

 xfrm_hash_grow_check(net, x->bydst.next != ((void*)0));
}
