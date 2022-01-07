
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int txfeedback; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
typedef int cmpk_txfb_t ;


 int cmpk_count_txstatistic (struct net_device*,int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
cmpk_handle_tx_feedback(
 struct net_device *dev,
 u8 * pmsg)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 cmpk_txfb_t rx_tx_fb;

 priv->stats.txfeedback++;
 memcpy((u8*)&rx_tx_fb, pmsg, sizeof(cmpk_txfb_t));

 cmpk_count_txstatistic(dev, &rx_tx_fb);







}
