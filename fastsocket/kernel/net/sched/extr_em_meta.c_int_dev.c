
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;
struct meta_obj {int value; } ;


 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int int_dev(struct net_device *dev, struct meta_obj *dst)
{
 if (unlikely(dev == ((void*)0)))
  return -1;

 dst->value = dev->ifindex;
 return 0;
}
