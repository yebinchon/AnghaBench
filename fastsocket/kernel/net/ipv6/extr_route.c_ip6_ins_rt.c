
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_dev; } ;
struct nl_info {int nl_net; } ;


 int __ip6_ins_rt (struct rt6_info*,struct nl_info*) ;
 int dev_net (int ) ;

int ip6_ins_rt(struct rt6_info *rt)
{
 struct nl_info info = {
  .nl_net = dev_net(rt->rt6i_dev),
 };
 return __ip6_ins_rt(rt, &info);
}
