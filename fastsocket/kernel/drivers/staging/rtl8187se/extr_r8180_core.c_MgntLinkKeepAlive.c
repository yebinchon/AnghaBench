
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ LastNumTxUnicast; scalar_t__ LastNumRxUnicast; int IdleCount; } ;
struct r8180_priv {int keepAliveLevel; scalar_t__ NumTxUnicast; TYPE_2__* ieee80211; TYPE_1__ link_detect; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ NumRxUnicast; } ;


 int CHECK_FOR_HANG_PERIOD ;
 scalar_t__ IEEE80211_LINKED ;
 int KEEP_ALIVE_INTERVAL ;
 int ieee80211_sta_ps_send_null_frame (TYPE_2__*,int) ;

__attribute__((used)) static void MgntLinkKeepAlive(struct r8180_priv *priv )
{
 if (priv->keepAliveLevel == 0)
  return;

 if(priv->ieee80211->state == IEEE80211_LINKED)
 {




  if ( (priv->keepAliveLevel== 2) ||
   (priv->link_detect.LastNumTxUnicast == priv->NumTxUnicast &&
   priv->link_detect.LastNumRxUnicast == priv->ieee80211->NumRxUnicast )
   )
  {
   priv->link_detect.IdleCount++;




   if(priv->link_detect.IdleCount >= ((KEEP_ALIVE_INTERVAL / CHECK_FOR_HANG_PERIOD)-1) )
   {
    priv->link_detect.IdleCount = 0;
    ieee80211_sta_ps_send_null_frame(priv->ieee80211, 0);
   }
  }
  else
  {
   priv->link_detect.IdleCount = 0;
  }
  priv->link_detect.LastNumTxUnicast = priv->NumTxUnicast;
  priv->link_detect.LastNumRxUnicast = priv->ieee80211->NumRxUnicast;
 }
}
