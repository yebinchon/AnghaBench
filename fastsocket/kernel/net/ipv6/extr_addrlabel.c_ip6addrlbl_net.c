
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip6addrlbl_entry {struct net* lbl_net; } ;


 struct net init_net ;

__attribute__((used)) static inline
struct net *ip6addrlbl_net(const struct ip6addrlbl_entry *lbl)
{



 return &init_net;

}
