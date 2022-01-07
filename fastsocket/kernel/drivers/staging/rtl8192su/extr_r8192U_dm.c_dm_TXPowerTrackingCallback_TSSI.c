
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct r8192_priv {int bDynamicTxHighPower; int Pwr_Track; int rf_type; scalar_t__ TSSI_13dBm; int rfa_txpowertrackingindex; int rfa_txpowertrackingindex_real; int rfc_txpowertrackingindex; int rfc_txpowertrackingindex_real; int cck_present_attentuation_difference; int cck_present_attentuation; int rfa_txpowertracking_default; scalar_t__ CurrentChannelBW; int cck_present_attentuation_20Mdefault; int cck_present_attentuation_40Mdefault; int bcck_in_ch14; TYPE_3__* ieee80211; TYPE_1__* txbbgain_table; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int Length; scalar_t__ Value; int Op; } ;
struct TYPE_7__ {int channel; } ;
struct TYPE_8__ {int bdynamic_txpower_enable; TYPE_2__ current_network; } ;
struct TYPE_6__ {int txbbgain_value; } ;
typedef TYPE_4__ DCMD_TXCMD_T ;


 int COMP_POWER_TRACKING ;
 int DESC_PACKET_TYPE_INIT ;
 scalar_t__ E_FOR_TX_POWER_TRACK ;
 void* FALSE ;
 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 int RT_TRACE (int ,char*,...) ;
 int SendTxCommandPacket (struct net_device*,TYPE_4__*,int) ;
 int TRUE ;
 int TXCMD_SET_TX_PWR_TRACKING ;
 int bMaskDWord ;
 int cmpk_message_handle_tx (struct net_device*,int*,int ,int) ;
 int dm_cck_txpower_adjust (struct net_device*,int) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int rOFDM0_XATxIQImbalance ;
 int rOFDM0_XCTxIQImbalance ;
 int read_nic_byte (struct net_device*,int) ;
 scalar_t__ read_nic_word (struct net_device*,int) ;
 int rtl8192_setBBreg (struct net_device*,int ,int ,int ) ;
 int write_nic_byte (struct net_device*,int,int ) ;

__attribute__((used)) static void dm_TXPowerTrackingCallback_TSSI(struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 bool bHighpowerstate, viviflag = FALSE;
 DCMD_TXCMD_T tx_cmd;
 u8 powerlevelOFDM24G;
 int i =0, j = 0, k = 0;
 u8 RF_Type, tmp_report[5]={0, 0, 0, 0, 0};
 u32 Value;
 u8 Pwr_Flag;
 u16 Avg_TSSI_Meas, TSSI_13dBm, Avg_TSSI_Meas_from_driver=0;




 u32 delta=0;

 write_nic_byte(dev, 0x1ba, 0);

 priv->ieee80211->bdynamic_txpower_enable = 0;
 bHighpowerstate = priv->bDynamicTxHighPower;

 powerlevelOFDM24G = (u8)(priv->Pwr_Track>>24);
 RF_Type = priv->rf_type;
 Value = (RF_Type<<8) | powerlevelOFDM24G;

 RT_TRACE(COMP_POWER_TRACKING, "powerlevelOFDM24G = %x\n", powerlevelOFDM24G);

 for(j = 0; j<=30; j++)
{

 tx_cmd.Op = TXCMD_SET_TX_PWR_TRACKING;
 tx_cmd.Length = 4;
 tx_cmd.Value = Value;







 cmpk_message_handle_tx(dev, (u8*)&tx_cmd,
        DESC_PACKET_TYPE_INIT, sizeof(DCMD_TXCMD_T));

 mdelay(1);

 for(i = 0;i <= 30; i++)
 {
  Pwr_Flag = read_nic_byte(dev, 0x1ba);

  if (Pwr_Flag == 0)
  {
   mdelay(1);
   continue;
  }



  Avg_TSSI_Meas = read_nic_word(dev, 0x13c);

  if(Avg_TSSI_Meas == 0)
  {
   write_nic_byte(dev, 0x1ba, 0);
   break;
  }

  for(k = 0;k < 5; k++)
  {



   if(k !=4)
    tmp_report[k] = read_nic_byte(dev, 0x134+k);
   else
    tmp_report[k] = read_nic_byte(dev, 0x13e);

   RT_TRACE(COMP_POWER_TRACKING, "TSSI_report_value = %d\n", tmp_report[k]);
  }


  for(k = 0;k < 5; k++)
  {
   if(tmp_report[k] <= 20)
   {
    viviflag =TRUE;
    break;
   }
  }
  if(viviflag ==TRUE)
  {
   write_nic_byte(dev, 0x1ba, 0);
   viviflag = FALSE;
   RT_TRACE(COMP_POWER_TRACKING, "we filted this data\n");
   for(k = 0;k < 5; k++)
    tmp_report[k] = 0;
   break;
  }

  for(k = 0;k < 5; k++)
  {
   Avg_TSSI_Meas_from_driver += tmp_report[k];
  }

  Avg_TSSI_Meas_from_driver = Avg_TSSI_Meas_from_driver*100/5;
  RT_TRACE(COMP_POWER_TRACKING, "Avg_TSSI_Meas_from_driver = %d\n", Avg_TSSI_Meas_from_driver);
  TSSI_13dBm = priv->TSSI_13dBm;
  RT_TRACE(COMP_POWER_TRACKING, "TSSI_13dBm = %d\n", TSSI_13dBm);



  if(Avg_TSSI_Meas_from_driver > TSSI_13dBm)
   delta = Avg_TSSI_Meas_from_driver - TSSI_13dBm;
  else
   delta = TSSI_13dBm - Avg_TSSI_Meas_from_driver;

  if(delta <= E_FOR_TX_POWER_TRACK)
  {
   priv->ieee80211->bdynamic_txpower_enable = TRUE;
   write_nic_byte(dev, 0x1ba, 0);
   RT_TRACE(COMP_POWER_TRACKING, "tx power track is done\n");
   RT_TRACE(COMP_POWER_TRACKING, "priv->rfa_txpowertrackingindex = %d\n", priv->rfa_txpowertrackingindex);
   RT_TRACE(COMP_POWER_TRACKING, "priv->rfa_txpowertrackingindex_real = %d\n", priv->rfa_txpowertrackingindex_real);




   RT_TRACE(COMP_POWER_TRACKING, "priv->cck_present_attentuation_difference = %d\n", priv->cck_present_attentuation_difference);
   RT_TRACE(COMP_POWER_TRACKING, "priv->cck_present_attentuation = %d\n", priv->cck_present_attentuation);
   return;
  }
  else
  {
   if(Avg_TSSI_Meas_from_driver < TSSI_13dBm - E_FOR_TX_POWER_TRACK)
   {
    if((priv->rfa_txpowertrackingindex > 0)



    )
    {
     priv->rfa_txpowertrackingindex--;
     if(priv->rfa_txpowertrackingindex_real > 4)
     {
      priv->rfa_txpowertrackingindex_real--;
      rtl8192_setBBreg(dev, rOFDM0_XATxIQImbalance, bMaskDWord, priv->txbbgain_table[priv->rfa_txpowertrackingindex_real].txbbgain_value);
     }
    }
   }
   else
   {
    if((priv->rfa_txpowertrackingindex < 36)



     )
    {
     priv->rfa_txpowertrackingindex++;
     priv->rfa_txpowertrackingindex_real++;
     rtl8192_setBBreg(dev, rOFDM0_XATxIQImbalance, bMaskDWord, priv->txbbgain_table[priv->rfa_txpowertrackingindex_real].txbbgain_value);






    }
   }
   priv->cck_present_attentuation_difference
    = priv->rfa_txpowertrackingindex - priv->rfa_txpowertracking_default;

   if(priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
    priv->cck_present_attentuation
    = priv->cck_present_attentuation_20Mdefault + priv->cck_present_attentuation_difference;
   else
    priv->cck_present_attentuation
    = priv->cck_present_attentuation_40Mdefault + priv->cck_present_attentuation_difference;

   if(priv->cck_present_attentuation > -1&&priv->cck_present_attentuation <23)
   {
    if(priv->ieee80211->current_network.channel == 14 && !priv->bcck_in_ch14)
    {
     priv->bcck_in_ch14 = TRUE;
     dm_cck_txpower_adjust(dev,priv->bcck_in_ch14);
    }
    else if(priv->ieee80211->current_network.channel != 14 && priv->bcck_in_ch14)
    {
     priv->bcck_in_ch14 = FALSE;
     dm_cck_txpower_adjust(dev,priv->bcck_in_ch14);
    }
    else
     dm_cck_txpower_adjust(dev,priv->bcck_in_ch14);
   }
  RT_TRACE(COMP_POWER_TRACKING, "priv->rfa_txpowertrackingindex = %d\n", priv->rfa_txpowertrackingindex);
  RT_TRACE(COMP_POWER_TRACKING, "priv->rfa_txpowertrackingindex_real = %d\n", priv->rfa_txpowertrackingindex_real);




  RT_TRACE(COMP_POWER_TRACKING, "priv->cck_present_attentuation_difference = %d\n", priv->cck_present_attentuation_difference);
  RT_TRACE(COMP_POWER_TRACKING, "priv->cck_present_attentuation = %d\n", priv->cck_present_attentuation);

  if (priv->cck_present_attentuation_difference <= -12||priv->cck_present_attentuation_difference >= 24)
  {
   priv->ieee80211->bdynamic_txpower_enable = TRUE;
   write_nic_byte(dev, 0x1ba, 0);
   RT_TRACE(COMP_POWER_TRACKING, "tx power track--->limited\n");
   return;
  }


 }
  write_nic_byte(dev, 0x1ba, 0);
  Avg_TSSI_Meas_from_driver = 0;
  for(k = 0;k < 5; k++)
   tmp_report[k] = 0;
  break;
 }
}
  priv->ieee80211->bdynamic_txpower_enable = TRUE;
  write_nic_byte(dev, 0x1ba, 0);
}
