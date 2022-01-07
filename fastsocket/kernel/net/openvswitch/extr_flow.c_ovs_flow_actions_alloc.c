
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {scalar_t__ actions_len; } ;


 int EINVAL ;
 int ENOMEM ;
 struct sw_flow_actions* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MAX_ACTIONS_BUFSIZE ;
 struct sw_flow_actions* kmalloc (int,int ) ;

struct sw_flow_actions *ovs_flow_actions_alloc(int size)
{
 struct sw_flow_actions *sfa;

 if (size > MAX_ACTIONS_BUFSIZE)
  return ERR_PTR(-EINVAL);

 sfa = kmalloc(sizeof(*sfa) + size, GFP_KERNEL);
 if (!sfa)
  return ERR_PTR(-ENOMEM);

 sfa->actions_len = 0;
 return sfa;
}
