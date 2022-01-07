
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txviokint; int txvierr; int txvookint; int txvoerr; int txbeokint; int txdatapkt; int txbkdrop; int txbedrop; int txvodrop; int txvidrop; int txoverflow; int txresumed; int txbeaconerr; int txbeaconokint; int txmanageerr; int txmanageokint; int txbkerr; int txbkokint; int txbeerr; } ;
struct r8192_priv {TYPE_1__ stats; int * tx_pending; } ;
struct net_device {int dummy; } ;
typedef int off_t ;


 size_t BE_PRIORITY ;
 size_t BK_PRIORITY ;
 size_t VI_PRIORITY ;
 size_t VO_PRIORITY ;
 int atomic_read (int *) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 scalar_t__ snprintf (char*,int,char*,int,int,int,int,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int proc_get_stats_tx(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 struct net_device *dev = data;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

 int len = 0;

 len += snprintf(page + len, count - len,
  "TX VI priority ok int: %lu\n"
  "TX VI priority error int: %lu\n"
  "TX VO priority ok int: %lu\n"
  "TX VO priority error int: %lu\n"
  "TX BE priority ok int: %lu\n"
  "TX BE priority error int: %lu\n"
  "TX BK priority ok int: %lu\n"
  "TX BK priority error int: %lu\n"
  "TX MANAGE priority ok int: %lu\n"
  "TX MANAGE priority error int: %lu\n"
  "TX BEACON priority ok int: %lu\n"
  "TX BEACON priority error int: %lu\n"


  "TX queue resume: %lu\n"
  "TX queue stopped?: %d\n"
  "TX fifo overflow: %lu\n"

  "TX VI queue: %d\n"
  "TX VO queue: %d\n"
  "TX BE queue: %d\n"
  "TX BK queue: %d\n"

  "TX VI dropped: %lu\n"
  "TX VO dropped: %lu\n"
  "TX BE dropped: %lu\n"
  "TX BK dropped: %lu\n"
  "TX total data packets %lu\n",

  priv->stats.txviokint,
  priv->stats.txvierr,
  priv->stats.txvookint,
  priv->stats.txvoerr,
  priv->stats.txbeokint,
  priv->stats.txbeerr,
  priv->stats.txbkokint,
  priv->stats.txbkerr,
  priv->stats.txmanageokint,
  priv->stats.txmanageerr,
  priv->stats.txbeaconokint,
  priv->stats.txbeaconerr,


  priv->stats.txresumed,
  netif_queue_stopped(dev),
  priv->stats.txoverflow,

  atomic_read(&(priv->tx_pending[VI_PRIORITY])),
  atomic_read(&(priv->tx_pending[VO_PRIORITY])),
  atomic_read(&(priv->tx_pending[BE_PRIORITY])),
  atomic_read(&(priv->tx_pending[BK_PRIORITY])),

  priv->stats.txvidrop,
  priv->stats.txvodrop,
  priv->stats.txbedrop,
  priv->stats.txbkdrop,
  priv->stats.txdatapkt

  );

 *eof = 1;
 return len;
}
