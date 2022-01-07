
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long txnpokint; unsigned long txhpokint; unsigned long txlpokint; int txbeaconerr; int txbeacon; int txretry; scalar_t__ txlperr; scalar_t__ txhperr; scalar_t__ txnperr; } ;
struct r8180_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
typedef int off_t ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 scalar_t__ snprintf (char*,int,char*,unsigned long,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int proc_get_stats_tx(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 struct net_device *dev = data;
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 int len = 0;
 unsigned long totalOK;

 totalOK=priv->stats.txnpokint+priv->stats.txhpokint+priv->stats.txlpokint;
 len += snprintf(page + len, count - len,
  "TX OK: %lu\n"
  "TX Error: %lu\n"
  "TX Retry: %lu\n"
  "TX beacon OK: %lu\n"
  "TX beacon error: %lu\n",
  totalOK,
  priv->stats.txnperr+priv->stats.txhperr+priv->stats.txlperr,
  priv->stats.txretry,
  priv->stats.txbeacon,
  priv->stats.txbeaconerr
 );

 *eof = 1;
 return len;
}
