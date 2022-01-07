
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rxurberr; int rxoverflow; int rxrdu; int rxint; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
typedef int off_t ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 scalar_t__ snprintf (char*,int,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int proc_get_stats_rx(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 struct net_device *dev = data;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

 int len = 0;

 len += snprintf(page + len, count - len,
  "RX packets: %lu\n"
  "RX desc err: %lu\n"
  "RX rx overflow error: %lu\n"
  "RX invalid urb error: %lu\n",
  priv->stats.rxint,
  priv->stats.rxrdu,
  priv->stats.rxoverflow,
  priv->stats.rxurberr);

 *eof = 1;
 return len;
}
