
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_walk {int dummy; } ;
struct netlink_callback {int * args; } ;


 int xfrm_policy_walk_done (struct xfrm_policy_walk*) ;

__attribute__((used)) static int xfrm_dump_policy_done(struct netlink_callback *cb)
{
 struct xfrm_policy_walk *walk = (struct xfrm_policy_walk *) &cb->args[1];

 xfrm_policy_walk_done(walk);
 return 0;
}
