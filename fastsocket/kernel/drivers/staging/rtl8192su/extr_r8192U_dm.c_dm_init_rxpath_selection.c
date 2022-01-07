
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {scalar_t__ CustomerID; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int Enable; int* rf_rssi; int* cck_pwdb_sta; int* rf_enable_rssi_th; scalar_t__ disabledRF; int DbgMode; int cck_method; int diff_TH; int SS_TH_low; } ;


 int CCK_Rx_Version_1 ;
 int CCK_Rx_Version_2 ;
 int DM_DBG_OFF ;
 TYPE_1__ DM_RxPathSelTable ;
 scalar_t__ RT_CID_819x_Netcore ;
 int RxPathSelection_SS_TH_low ;
 int RxPathSelection_diff_TH ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_init_rxpath_selection(struct net_device * dev)
{
 u8 i;
 struct r8192_priv *priv = ieee80211_priv(dev);
 DM_RxPathSelTable.Enable = 1;
 DM_RxPathSelTable.SS_TH_low = RxPathSelection_SS_TH_low;
 DM_RxPathSelTable.diff_TH = RxPathSelection_diff_TH;
 if(priv->CustomerID == RT_CID_819x_Netcore)
  DM_RxPathSelTable.cck_method = CCK_Rx_Version_2;
 else
  DM_RxPathSelTable.cck_method = CCK_Rx_Version_1;
 DM_RxPathSelTable.DbgMode = DM_DBG_OFF;
 DM_RxPathSelTable.disabledRF = 0;
 for(i=0; i<4; i++)
 {
  DM_RxPathSelTable.rf_rssi[i] = 50;
  DM_RxPathSelTable.cck_pwdb_sta[i] = -64;
  DM_RxPathSelTable.rf_enable_rssi_th[i] = 100;
 }
}
