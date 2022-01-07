
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atalk_route {struct net_device* dev; } ;
struct atalk_addr {int dummy; } ;


 struct atalk_route* atrtr_find (struct atalk_addr*) ;

struct net_device *atrtr_get_dev(struct atalk_addr *sa)
{
 struct atalk_route *atr = atrtr_find(sa);
 return atr ? atr->dev : ((void*)0);
}
