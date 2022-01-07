
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_walk {int dummy; } ;
struct netlink_callback {int * args; } ;


 int xfrm_state_walk_done (struct xfrm_state_walk*) ;

__attribute__((used)) static int xfrm_dump_sa_done(struct netlink_callback *cb)
{
 struct xfrm_state_walk *walk = (struct xfrm_state_walk *) &cb->args[1];
 xfrm_state_walk_done(walk);
 return 0;
}
