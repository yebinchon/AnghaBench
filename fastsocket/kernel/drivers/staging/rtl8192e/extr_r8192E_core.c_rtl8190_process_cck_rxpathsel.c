
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int TotalNum; char** elements; size_t index; char* TotalVal; } ;
struct TYPE_5__ {TYPE_1__ cck_adc_pwdb; } ;
struct r8192_priv {scalar_t__ rf_type; int* undecorated_smoothed_cck_adc_pwdb; TYPE_2__ stats; } ;
struct ieee80211_rx_stats {char* cck_adc_pwdb; scalar_t__ bPacketBeacon; scalar_t__ bPacketToSelf; scalar_t__ bIsCCK; } ;
struct TYPE_6__ {int* cck_pwdb_sta; scalar_t__ Enable; } ;


 TYPE_3__ DM_RxPathSelTable ;
 scalar_t__ PHY_RSSI_SLID_WIN_MAX ;
 size_t RF90_PATH_A ;
 size_t RF90_PATH_MAX ;
 scalar_t__ RF_2T4R ;
 int Rx_Smooth_Factor ;

__attribute__((used)) static void
rtl8190_process_cck_rxpathsel(
 struct r8192_priv * priv,
 struct ieee80211_rx_stats * pprevious_stats
 )
{
}
