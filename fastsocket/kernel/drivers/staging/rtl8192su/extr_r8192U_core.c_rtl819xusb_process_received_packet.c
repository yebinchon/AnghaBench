
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_8__ {int rxframgment; } ;
struct r8192_priv {TYPE_2__ stats; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int packetlength; int * virtual_address; } ;
struct TYPE_7__ {int (* GetHwRegHandler ) (TYPE_3__*,int ,int *) ;} ;
struct TYPE_9__ {TYPE_1__ HalFunc; int bInHctTest; } ;
typedef scalar_t__ RT_RF_POWER_STATE ;


 TYPE_3__* Adapter ;
 int CountRxErrStatistics (TYPE_3__*,int ) ;
 int HW_VAR_RF_STATE ;
 int RmMonitorSignalStrength (TYPE_3__*,int ) ;
 int SwCrcCheck () ;
 scalar_t__ eRfOff ;
 int get_rxpacket_shiftbytes_819xusb (struct ieee80211_rx_stats*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int pRfd ;
 scalar_t__ rtl819xusb_rx_command_packet (struct net_device*,struct ieee80211_rx_stats*) ;
 int stub1 (TYPE_3__*,int ,int *) ;

void
rtl819xusb_process_received_packet(
 struct net_device *dev,
 struct ieee80211_rx_stats *pstats
 )
{

 u8* frame;
 u16 frame_len=0;
 struct r8192_priv *priv = ieee80211_priv(dev);







 pstats->virtual_address += get_rxpacket_shiftbytes_819xusb(pstats);
 frame = pstats->virtual_address;
 frame_len = pstats->packetlength;




 {
 priv->stats.rxframgment++;

 }





 if (rtl819xusb_rx_command_packet(dev, pstats))
 {
  return;
 }






}
