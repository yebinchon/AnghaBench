
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_state_walk {scalar_t__ seq; int state; int proto; int all; } ;


 int INIT_LIST_HEAD (int *) ;
 int XFRM_STATE_DEAD ;

void xfrm_state_walk_init(struct xfrm_state_walk *walk, u8 proto)
{
 INIT_LIST_HEAD(&walk->all);
 walk->proto = proto;
 walk->state = XFRM_STATE_DEAD;
 walk->seq = 0;
}
