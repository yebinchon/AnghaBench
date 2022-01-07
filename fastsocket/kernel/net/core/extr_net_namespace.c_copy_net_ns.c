
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 unsigned long CLONE_NEWNET ;
 int EINVAL ;
 struct net* ERR_PTR (int ) ;

struct net *copy_net_ns(unsigned long flags, struct net *old_net)
{
 if (flags & CLONE_NEWNET)
  return ERR_PTR(-EINVAL);
 return old_net;
}
