
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phonet_net {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int type; } ;


 int ARPHRD_PHONET ;


 int dev_net (struct net_device*) ;
 struct phonet_net* net_generic (int ,int ) ;
 int phonet_device_autoconf (struct net_device*) ;
 int phonet_device_destroy (struct net_device*) ;
 int phonet_net_id ;

__attribute__((used)) static int phonet_device_notify(struct notifier_block *me, unsigned long what,
    void *arg)
{
 struct net_device *dev = arg;
 struct phonet_net *pnn = net_generic(dev_net(dev), phonet_net_id);

 if (!pnn)

  return 0;

 switch (what) {
 case 129:
  if (dev->type == ARPHRD_PHONET)
   phonet_device_autoconf(dev);
  break;
 case 128:
  phonet_device_destroy(dev);
  break;
 }
 return 0;

}
