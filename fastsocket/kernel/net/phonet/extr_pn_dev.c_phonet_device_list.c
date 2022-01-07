
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phonet_device_list {int dummy; } ;
struct phonet_net {struct phonet_device_list pndevs; } ;
struct net {int dummy; } ;


 struct phonet_net* net_generic (struct net*,int ) ;
 int phonet_net_id ;

struct phonet_device_list *phonet_device_list(struct net *net)
{
 struct phonet_net *pnn = net_generic(net, phonet_net_id);
 return &pnn->pndevs;
}
