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
struct r8192_priv {int rf_chip; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ RT_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
#define  RF_6052 132 
#define  RF_8225 131 
#define  RF_8256 130 
#define  RF_8258 129 
#define  RF_PSEUDO_11N 128 
 scalar_t__ RT_STATUS_SUCCESS ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 

extern	bool
FUNC2(struct net_device* dev)
{
	struct r8192_priv 	*priv = FUNC1(dev);
	RT_STATUS    		rtStatus = RT_STATUS_SUCCESS;

	//Set priv->rf_chip = RF_8225 to do real PHY FPGA initilization

	//<Roger_EXP> We assign RF type here temporally. 2008.09.12.
	priv->rf_chip = RF_6052;

	//
	// RF config
	//
	switch(priv->rf_chip)
	{
	case RF_8225:
	case RF_6052:
		rtStatus = FUNC0(dev);
		break;

	case RF_8256:
		//rtStatus = PHY_RF8256_Config(dev);
		break;

	case RF_8258:
		break;

	case RF_PSEUDO_11N:
		//rtStatus = PHY_RF8225_Config(dev);
		break;
        default:
            break;
	}

	return (rtStatus == RT_STATUS_SUCCESS) ? 1:0;
}