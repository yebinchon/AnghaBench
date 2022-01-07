
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int EINVAL ;
 struct net* ERR_PTR (int ) ;

struct net *get_net_ns_by_fd(int fd)
{
 return ERR_PTR(-EINVAL);
}
