
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct r8192_priv {scalar_t__ undecorated_smoothed_pwdb; scalar_t__ reset_count; scalar_t__ CurrentChannelBW; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int dig_enable_flag; scalar_t__ dig_state; scalar_t__ rssi_low_thresh; scalar_t__ rssi_high_thresh; void* dig_highpwr_state; scalar_t__ dig_algorithm_switch; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 void* DM_STA_DIG_MAX ;
 scalar_t__ DM_STA_DIG_OFF ;
 scalar_t__ DM_STA_DIG_ON ;
 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 scalar_t__ IEEE80211_LINKED ;
 int UFWP ;
 int bMaskByte0 ;
 int bMaskByte1 ;
 int dm_ctrl_initgain_byrssi_highpwr (struct net_device*) ;
 TYPE_2__ dm_digtable ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rOFDM0_RxDetector1 ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XATxAFE ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XCAGCCore1 ;
 int rOFDM0_XDAGCCore1 ;
 int rtl8192_setBBreg (struct net_device*,int,int ,int) ;
 int write_nic_byte (struct net_device*,int,int) ;

__attribute__((used)) static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
 struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 static u32 reset_cnt = 0;
 u8 i;

 if (dm_digtable.dig_enable_flag == 0)
  return;

 if(dm_digtable.dig_algorithm_switch)
 {
  dm_digtable.dig_state = DM_STA_DIG_MAX;

  for(i=0; i<3; i++)
   rtl8192_setBBreg(dev, UFWP, bMaskByte1, 0x1);
  dm_digtable.dig_algorithm_switch = 0;
 }

 if (priv->ieee80211->state != IEEE80211_LINKED)
  return;


 if ((priv->undecorated_smoothed_pwdb > dm_digtable.rssi_low_thresh) &&
  (priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
 {
  return;
 }







 if ((priv->undecorated_smoothed_pwdb <= dm_digtable.rssi_low_thresh))
 {


  if (dm_digtable.dig_state == DM_STA_DIG_OFF &&
   (priv->reset_count == reset_cnt))
  {
   return;
  }
  else
  {
   reset_cnt = priv->reset_count;
  }


  dm_digtable.dig_highpwr_state = DM_STA_DIG_MAX;
  dm_digtable.dig_state = DM_STA_DIG_OFF;


  rtl8192_setBBreg(dev, UFWP, bMaskByte1, 0x8);


  write_nic_byte(dev, rOFDM0_XAAGCCore1, 0x17);
  write_nic_byte(dev, rOFDM0_XBAGCCore1, 0x17);
  write_nic_byte(dev, rOFDM0_XCAGCCore1, 0x17);
  write_nic_byte(dev, rOFDM0_XDAGCCore1, 0x17);


  if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
  {


   rtl8192_setBBreg(dev, (rOFDM0_XATxAFE+3), bMaskByte0, 0x00);
  }
  else
   write_nic_byte(dev, rOFDM0_RxDetector1, 0x42);


  write_nic_byte(dev, 0xa0a, 0x08);



  return;

 }



 if ((priv->undecorated_smoothed_pwdb >= dm_digtable.rssi_high_thresh) )
 {
  u8 reset_flag = 0;

  if (dm_digtable.dig_state == DM_STA_DIG_ON &&
   (priv->reset_count == reset_cnt))
  {
   dm_ctrl_initgain_byrssi_highpwr(dev);
   return;
  }
  else
  {
   if (priv->reset_count != reset_cnt)
    reset_flag = 1;

   reset_cnt = priv->reset_count;
  }

  dm_digtable.dig_state = DM_STA_DIG_ON;




  if (reset_flag == 1)
  {
   write_nic_byte(dev, rOFDM0_XAAGCCore1, 0x2c);
   write_nic_byte(dev, rOFDM0_XBAGCCore1, 0x2c);
   write_nic_byte(dev, rOFDM0_XCAGCCore1, 0x2c);
   write_nic_byte(dev, rOFDM0_XDAGCCore1, 0x2c);
  }
  else
  {
   write_nic_byte(dev, rOFDM0_XAAGCCore1, 0x20);
   write_nic_byte(dev, rOFDM0_XBAGCCore1, 0x20);
   write_nic_byte(dev, rOFDM0_XCAGCCore1, 0x20);
   write_nic_byte(dev, rOFDM0_XDAGCCore1, 0x20);
  }


  if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
  {





    write_nic_byte(dev, (rOFDM0_XATxAFE+3), 0x20);
  }
  else
   write_nic_byte(dev, rOFDM0_RxDetector1, 0x44);


  write_nic_byte(dev, 0xa0a, 0xcd);






  rtl8192_setBBreg(dev, UFWP, bMaskByte1, 0x1);

 }

 dm_ctrl_initgain_byrssi_highpwr(dev);

}
