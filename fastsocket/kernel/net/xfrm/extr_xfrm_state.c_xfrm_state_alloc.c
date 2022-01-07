
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* hard_packet_limit; void* hard_byte_limit; void* soft_packet_limit; void* soft_byte_limit; } ;
struct TYPE_5__ {int add_time; } ;
struct TYPE_4__ {int all; } ;
struct xfrm_state {int lock; int * inner_mode_iaf; int * inner_mode; scalar_t__ replay_maxdiff; scalar_t__ replay_maxage; TYPE_3__ lft; TYPE_2__ curlft; int rtimer; int timer; int byspi; int bysrc; int bydst; TYPE_1__ km; int tunnel_users; int refcnt; int xs_net; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 void* XFRM_INF ;
 int atomic_set (int *,int) ;
 int get_seconds () ;
 struct xfrm_state* kzalloc (int,int ) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int write_pnet (int *,struct net*) ;
 int xfrm_replay_timer_handler ;
 int xfrm_timer_handler ;

struct xfrm_state *xfrm_state_alloc(struct net *net)
{
 struct xfrm_state *x;

 x = kzalloc(sizeof(struct xfrm_state), GFP_ATOMIC);

 if (x) {
  write_pnet(&x->xs_net, net);
  atomic_set(&x->refcnt, 1);
  atomic_set(&x->tunnel_users, 0);
  INIT_LIST_HEAD(&x->km.all);
  INIT_HLIST_NODE(&x->bydst);
  INIT_HLIST_NODE(&x->bysrc);
  INIT_HLIST_NODE(&x->byspi);
  setup_timer(&x->timer, xfrm_timer_handler, (unsigned long)x);
  setup_timer(&x->rtimer, xfrm_replay_timer_handler,
    (unsigned long)x);
  x->curlft.add_time = get_seconds();
  x->lft.soft_byte_limit = XFRM_INF;
  x->lft.soft_packet_limit = XFRM_INF;
  x->lft.hard_byte_limit = XFRM_INF;
  x->lft.hard_packet_limit = XFRM_INF;
  x->replay_maxage = 0;
  x->replay_maxdiff = 0;
  x->inner_mode = ((void*)0);
  x->inner_mode_iaf = ((void*)0);
  spin_lock_init(&x->lock);
 }
 return x;
}
