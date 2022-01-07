
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* drv; } ;
struct dsa_slave_priv {int port; struct dsa_switch* parent; } ;
struct TYPE_2__ {int (* get_strings ) (struct dsa_switch*,int ,int *) ;} ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int strncpy (int *,char*,int) ;
 int stub1 (struct dsa_switch*,int ,int *) ;

__attribute__((used)) static void dsa_slave_get_strings(struct net_device *dev,
      uint32_t stringset, uint8_t *data)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct dsa_switch *ds = p->parent;

 if (stringset == ETH_SS_STATS) {
  int len = ETH_GSTRING_LEN;

  strncpy(data, "tx_packets", len);
  strncpy(data + len, "tx_bytes", len);
  strncpy(data + 2 * len, "rx_packets", len);
  strncpy(data + 3 * len, "rx_bytes", len);
  if (ds->drv->get_strings != ((void*)0))
   ds->drv->get_strings(ds, p->port, data + 4 * len);
 }
}
