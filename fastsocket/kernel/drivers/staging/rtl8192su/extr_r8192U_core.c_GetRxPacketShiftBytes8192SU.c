
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ieee80211_rx_stats {scalar_t__ RxBufShift; scalar_t__ RxDrvInfoSize; } ;
typedef int rx_desc_819x_usb ;



u32 GetRxPacketShiftBytes8192SU(struct ieee80211_rx_stats *Status, bool bIsRxAggrSubframe)
{


 return (sizeof(rx_desc_819x_usb) + Status->RxDrvInfoSize + Status->RxBufShift);
}
