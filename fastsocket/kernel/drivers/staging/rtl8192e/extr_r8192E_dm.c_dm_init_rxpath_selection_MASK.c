#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct r8192_priv {scalar_t__ CustomerID; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int Enable; int* rf_rssi; int* cck_pwdb_sta; int* rf_enable_rssi_th; scalar_t__ disabledRF; int /*<<< orphan*/  DbgMode; int /*<<< orphan*/  cck_method; int /*<<< orphan*/  diff_TH; int /*<<< orphan*/  SS_TH_low; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCK_Rx_Version_1 ; 
 int /*<<< orphan*/  CCK_Rx_Version_2 ; 
 int /*<<< orphan*/  DM_DBG_OFF ; 
 TYPE_1__ DM_RxPathSelTable ; 
 scalar_t__ RT_CID_819x_Netcore ; 
 int /*<<< orphan*/  RxPathSelection_SS_TH_low ; 
 int /*<<< orphan*/  RxPathSelection_diff_TH ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static void FUNC1(struct net_device * dev)
{
	u8 i;
	struct r8192_priv *priv = FUNC0(dev);
	DM_RxPathSelTable.Enable = 1;	//default enabled
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