
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int CAP_NET_ADMIN ;
 int CAP_SYS_MODULE ;
 struct net_device* __dev_get_by_name (struct net*,char const*) ;
 scalar_t__ capable (int ) ;
 int dev_base_lock ;
 int pr_err (char*,char const*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int request_module (char*,char const*) ;

void dev_load(struct net *net, const char *name)
{
 struct net_device *dev;
 int no_module;

 read_lock(&dev_base_lock);
 dev = __dev_get_by_name(net, name);
 read_unlock(&dev_base_lock);

 no_module = !dev;
 if (no_module && capable(CAP_NET_ADMIN))
  no_module = request_module("netdev-%s", name);
 if (no_module && capable(CAP_SYS_MODULE)) {
  if (!request_module("%s", name))
   pr_err("Loading kernel module for a network device "
"with CAP_SYS_MODULE (deprecated).  Use CAP_NET_ADMIN and alias netdev-%s "
"instead\n", name);
 }
}
