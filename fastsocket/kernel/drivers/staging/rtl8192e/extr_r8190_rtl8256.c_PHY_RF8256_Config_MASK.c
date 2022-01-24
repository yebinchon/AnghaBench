#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r8192_priv {int /*<<< orphan*/  NumTotalRFPath; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  RT_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  RTL819X_TOTAL_RF_PATH ; 
 int /*<<< orphan*/  RT_STATUS_SUCCESS ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

RT_STATUS FUNC2(struct net_device* dev)
{
	struct r8192_priv *priv = FUNC0(dev);
	// Initialize general global value
	//
	RT_STATUS rtStatus = RT_STATUS_SUCCESS;
	// TODO: Extend RF_PATH_C and RF_PATH_D in the future
	priv->NumTotalRFPath = RTL819X_TOTAL_RF_PATH;
	// Config BB and RF
	rtStatus = FUNC1(dev);

	return rtStatus;
}