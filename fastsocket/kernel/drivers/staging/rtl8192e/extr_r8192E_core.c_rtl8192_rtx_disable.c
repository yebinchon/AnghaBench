
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {int skb_queue; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * skb_aggQ; int * skb_waitQ; } ;


 int CMDR ;
 int CR_RE ;
 int CR_TE ;
 int MAX_QUEUE_SIZE ;
 int force_pci_posting (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int read_nic_byte (struct net_device*,int ) ;
 int skb_queue_purge (int *) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8192_rtx_disable(struct net_device *dev)
{
 u8 cmd;
 struct r8192_priv *priv = ieee80211_priv(dev);
        int i;

 cmd=read_nic_byte(dev,CMDR);

  write_nic_byte(dev, CMDR, cmd &~ (CR_TE|CR_RE));


 force_pci_posting(dev);
 mdelay(30);

        for(i = 0; i < MAX_QUEUE_SIZE; i++) {
                skb_queue_purge(&priv->ieee80211->skb_waitQ [i]);
        }
        for(i = 0; i < MAX_QUEUE_SIZE; i++) {
                skb_queue_purge(&priv->ieee80211->skb_aggQ [i]);
        }


 skb_queue_purge(&priv->skb_queue);
 return;
}
