
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int ** ht_mcs; int * ofdm; int * cck; } ;
struct TYPE_9__ {TYPE_2__ txrate; } ;
struct r8192_priv {TYPE_3__ stats; } ;
struct net_device {int dummy; } ;
typedef int pu1Byte ;
struct TYPE_10__ {scalar_t__** ht_mcs; scalar_t__* ofdm; scalar_t__* cck; } ;
typedef TYPE_4__ cmpk_tx_rahis_t ;
struct TYPE_7__ {int (* GetHwRegHandler ) (TYPE_5__*,int ,int ) ;} ;
struct TYPE_11__ {TYPE_1__ HalFunc; } ;


 int HW_VAR_RF_STATE ;
 scalar_t__ eRfOff ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_5__* pAdapter ;
 scalar_t__ rtState ;
 int stub1 (TYPE_5__*,int ,int ) ;

__attribute__((used)) static void
cmpk_handle_tx_rate_history(
 struct net_device *dev,
 u8* pmsg)
{
 cmpk_tx_rahis_t *ptxrate;

 u8 i, j;
 u16 length = sizeof(cmpk_tx_rahis_t);
 u32 *ptemp;
 struct r8192_priv *priv = ieee80211_priv(dev);
 ptemp = (u32 *)pmsg;





 for (i = 0; i < (length/4); i++)
 {
  u16 temp1, temp2;

  temp1 = ptemp[i]&0x0000FFFF;
  temp2 = ptemp[i]>>16;
  ptemp[i] = (temp1<<16)|temp2;
 }

 ptxrate = (cmpk_tx_rahis_t *)pmsg;

 if (ptxrate == ((void*)0) )
 {
  return;
 }

 for (i = 0; i < 16; i++)
 {

  if (i < 4)
   priv->stats.txrate.cck[i] += ptxrate->cck[i];


  if (i< 8)
   priv->stats.txrate.ofdm[i] += ptxrate->ofdm[i];

  for (j = 0; j < 4; j++)
   priv->stats.txrate.ht_mcs[j][i] += ptxrate->ht_mcs[j][i];
 }

}
