
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8180_priv {int* txmapring; int txringcount; int* txbkpring; int* txbepring; int* txvipring; int* txvopring; int* txhpring; int* txbeaconring; int txbeaconcount; int* txmapringtail; int* txmapringhead; int* txbkpringtail; int* txbkpringhead; int* txbepringtail; int* txbepringhead; int* txvipringtail; int* txvipringhead; int* txvopringtail; int* txvopringhead; int* txhpringtail; int* txhpringhead; int* txbeaconringtail; scalar_t__ ack_tx_to_ieee; int ieee80211; int txbeaconbufs; int txbeaconbufstail; int txhpbufs; int txhpbufstail; int txvopbufs; int txvopbufstail; int txvipbufs; int txvipbufstail; int txbepbufs; int txbepbufstail; int txbkpbufs; int txbkpbufstail; int txmapbufs; int txmapbufstail; } ;
struct net_device {int dummy; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_reset_queue (int ) ;
 int set_nic_txring (struct net_device*) ;

void fix_tx_fifo(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 u32 *tmp;
 int i;

 for (tmp=priv->txmapring, i=0;
      i < priv->txringcount;
      tmp+=8, i++){
  *tmp = *tmp &~ (1<<31);
 }

 for (tmp=priv->txbkpring, i=0;
      i < priv->txringcount;
      tmp+=8, i++) {
  *tmp = *tmp &~ (1<<31);
 }

 for (tmp=priv->txbepring, i=0;
      i < priv->txringcount;
      tmp+=8, i++){
  *tmp = *tmp &~ (1<<31);
 }
 for (tmp=priv->txvipring, i=0;
      i < priv->txringcount;
      tmp+=8, i++) {
  *tmp = *tmp &~ (1<<31);
 }

 for (tmp=priv->txvopring, i=0;
      i < priv->txringcount;
      tmp+=8, i++){
  *tmp = *tmp &~ (1<<31);
 }

 for (tmp=priv->txhpring, i=0;
      i < priv->txringcount;
      tmp+=8,i++){
  *tmp = *tmp &~ (1<<31);
 }

 for (tmp=priv->txbeaconring, i=0;
      i < priv->txbeaconcount;
      tmp+=8, i++){
  *tmp = *tmp &~ (1<<31);
 }

 priv->txmapringtail = priv->txmapring;
 priv->txmapringhead = priv->txmapring;
 priv->txmapbufstail = priv->txmapbufs;

 priv->txbkpringtail = priv->txbkpring;
 priv->txbkpringhead = priv->txbkpring;
 priv->txbkpbufstail = priv->txbkpbufs;

 priv->txbepringtail = priv->txbepring;
 priv->txbepringhead = priv->txbepring;
 priv->txbepbufstail = priv->txbepbufs;

 priv->txvipringtail = priv->txvipring;
 priv->txvipringhead = priv->txvipring;
 priv->txvipbufstail = priv->txvipbufs;

 priv->txvopringtail = priv->txvopring;
 priv->txvopringhead = priv->txvopring;
 priv->txvopbufstail = priv->txvopbufs;

 priv->txhpringtail = priv->txhpring;
 priv->txhpringhead = priv->txhpring;
 priv->txhpbufstail = priv->txhpbufs;

 priv->txbeaconringtail = priv->txbeaconring;
 priv->txbeaconbufstail = priv->txbeaconbufs;
 set_nic_txring(dev);

 ieee80211_reset_queue(priv->ieee80211);
 priv->ack_tx_to_ieee = 0;
}
