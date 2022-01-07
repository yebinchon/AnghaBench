
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ name; } ;
struct meta_obj {unsigned long value; int len; } ;


 int strlen (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int var_dev(struct net_device *dev, struct meta_obj *dst)
{
 if (unlikely(dev == ((void*)0)))
  return -1;

 dst->value = (unsigned long) dev->name;
 dst->len = strlen(dev->name);
 return 0;
}
