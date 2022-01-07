
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wimax_dev {int mutex; struct net_device* net_dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {int name; int addr_len; int dev_addr; TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef int addr_str ;


 int WIMAX_ST_DOWN ;
 int __wimax_state_set (struct wimax_dev*,int ) ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,struct net_device*,...) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,struct net_device*) ;
 int dev_err (struct device*,char*,int,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wimax_addr_scnprint (char*,int,int ,int ) ;
 int wimax_debugfs_add (struct wimax_dev*) ;
 int wimax_id_table_add (struct wimax_dev*) ;
 int wimax_id_table_rm (struct wimax_dev*) ;
 int wimax_rfkill_add (struct wimax_dev*) ;
 int wimax_rfkill_rm (struct wimax_dev*) ;

int wimax_dev_add(struct wimax_dev *wimax_dev, struct net_device *net_dev)
{
 int result;
 struct device *dev = net_dev->dev.parent;
 char addr_str[32];

 d_fnstart(3, dev, "(wimax_dev %p net_dev %p)\n", wimax_dev, net_dev);



 wimax_dev->net_dev = net_dev;
 result = wimax_rfkill_add(wimax_dev);
 if (result < 0)
  goto error_rfkill_add;


 mutex_lock(&wimax_dev->mutex);
 wimax_id_table_add(wimax_dev);
 result = wimax_debugfs_add(wimax_dev);
 if (result < 0) {
  dev_err(dev, "cannot initialize debugfs: %d\n",
   result);
  goto error_debugfs_add;
 }

 __wimax_state_set(wimax_dev, WIMAX_ST_DOWN);
 mutex_unlock(&wimax_dev->mutex);

 wimax_addr_scnprint(addr_str, sizeof(addr_str),
       net_dev->dev_addr, net_dev->addr_len);
 dev_err(dev, "WiMAX interface %s (%s) ready\n",
  net_dev->name, addr_str);
 d_fnend(3, dev, "(wimax_dev %p net_dev %p) = 0\n", wimax_dev, net_dev);
 return 0;

error_debugfs_add:
 wimax_id_table_rm(wimax_dev);
 mutex_unlock(&wimax_dev->mutex);
 wimax_rfkill_rm(wimax_dev);
error_rfkill_add:
 d_fnend(3, dev, "(wimax_dev %p net_dev %p) = %d\n",
  wimax_dev, net_dev, result);
 return result;
}
