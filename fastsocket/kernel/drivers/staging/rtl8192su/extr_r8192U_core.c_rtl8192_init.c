
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; int function; } ;
struct r8192_priv {TYPE_2__ watch_dog_timer; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* rtl819x_read_eeprom_info ) (struct net_device*) ;} ;


 int dump_eprom (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int init_hal_dm (struct net_device*) ;
 int init_timer (TYPE_2__*) ;
 int rtl8192_get_channel_map (struct net_device*) ;
 int rtl8192_get_eeprom_size (struct net_device*) ;
 int rtl8192_init_priv_lock (struct r8192_priv*) ;
 int rtl8192_init_priv_task (struct net_device*) ;
 int rtl8192_init_priv_variable (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int watch_dog_timer_callback ;

short rtl8192_init(struct net_device *dev)
{

 struct r8192_priv *priv = ieee80211_priv(dev);

 rtl8192_init_priv_variable(dev);
 rtl8192_init_priv_lock(priv);
 rtl8192_init_priv_task(dev);
 rtl8192_get_eeprom_size(dev);
 priv->ops->rtl819x_read_eeprom_info(dev);
 rtl8192_get_channel_map(dev);
 init_hal_dm(dev);
 init_timer(&priv->watch_dog_timer);
 priv->watch_dog_timer.data = (unsigned long)dev;
 priv->watch_dog_timer.function = watch_dog_timer_callback;





 return 0;
}
