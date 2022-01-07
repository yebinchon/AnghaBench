
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char const* name; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 int EEXIST ;
 int EINVAL ;
 int IFNAMSIZ ;
 scalar_t__ __dev_get_by_name (struct net*,char const*) ;
 int dev_alloc_name_ns (struct net*,struct net_device*,char const*) ;
 int dev_valid_name (char const*) ;
 scalar_t__ strchr (char const*,char) ;
 int strlcpy (char const*,char const*,int ) ;

__attribute__((used)) static int dev_get_valid_name(struct net *net,
         struct net_device *dev,
         const char *name, bool fmt)
{
 BUG_ON(!net);

 if (!dev_valid_name(name))
  return -EINVAL;

 if (fmt && strchr(name, '%'))
  return dev_alloc_name_ns(net, dev, name);
 else if (__dev_get_by_name(net, name))
  return -EEXIST;
 else if (dev->name != name)
  strlcpy(dev->name, name, IFNAMSIZ);

 return 0;
}
