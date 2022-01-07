
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8180_priv {int txringcount; int * txhpringtail; int * txhpringhead; int * txvopringtail; int * txvopringhead; int * txvipringtail; int * txvipringhead; int * txbepringtail; int * txbepringhead; int * txbkpringtail; int * txbkpringhead; int * txmapringtail; int * txmapringhead; } ;
struct net_device {int dummy; } ;




 int DMESG (char*) ;




 struct r8180_priv* ieee80211_priv (struct net_device*) ;

int get_curr_tx_free_desc(struct net_device *dev, int priority)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u32* tail;
 u32* head;
 int ret;

 switch (priority){
  case 130:
   head = priv->txmapringhead;
   tail = priv->txmapringtail;
   break;
  case 132:
   head = priv->txbkpringhead;
   tail = priv->txbkpringtail;
   break;
  case 133:
   head = priv->txbepringhead;
   tail = priv->txbepringtail;
   break;
  case 129:
   head = priv->txvipringhead;
   tail = priv->txvipringtail;
   break;
  case 128:
   head = priv->txvopringhead;
   tail = priv->txvopringtail;
   break;
  case 131:
   head = priv->txhpringhead;
   tail = priv->txhpringtail;
   break;
  default:
   return -1;
 }

 if (head <= tail)
  ret = priv->txringcount - (tail - head)/8;
 else
  ret = (head - tail)/8;

 if (ret > priv->txringcount)
  DMESG("BUG");

 return ret;
}
