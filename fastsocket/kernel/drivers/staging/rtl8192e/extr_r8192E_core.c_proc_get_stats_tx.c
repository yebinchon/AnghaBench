
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int txviokint; int txoverflow; int txcmdpktokint; int txbeaconerr; int txbeaconokint; int txmanageokint; int txbkokint; int txbeokint; int txvookint; } ;
struct r8192_priv {TYPE_3__ stats; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
typedef int off_t ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 scalar_t__ snprintf (char*,int,char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int proc_get_stats_tx(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 struct net_device *dev = data;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

 int len = 0;

 len += snprintf(page + len, count - len,
  "TX VI priority ok int: %lu\n"

  "TX VO priority ok int: %lu\n"

  "TX BE priority ok int: %lu\n"

  "TX BK priority ok int: %lu\n"

  "TX MANAGE priority ok int: %lu\n"

  "TX BEACON priority ok int: %lu\n"
  "TX BEACON priority error int: %lu\n"
  "TX CMDPKT priority ok int: %lu\n"



  "TX queue stopped?: %d\n"
  "TX fifo overflow: %lu\n"
  "TX total data packets %lu\n"
  "TX total data bytes :%lu\n",

  priv->stats.txviokint,

  priv->stats.txvookint,

  priv->stats.txbeokint,

  priv->stats.txbkokint,

  priv->stats.txmanageokint,

  priv->stats.txbeaconokint,
  priv->stats.txbeaconerr,
  priv->stats.txcmdpktokint,



  netif_queue_stopped(dev),
  priv->stats.txoverflow,
  priv->ieee80211->stats.tx_packets,
  priv->ieee80211->stats.tx_bytes






  );

 *eof = 1;
 return len;
}
