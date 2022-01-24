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
struct net_device {int /*<<< orphan*/  ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef  int /*<<< orphan*/  PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 

int FUNC2(struct net_device *dev,
		   struct iw_request_info *info,
		   char *name, char *extra)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;

	//check if the interface is down
    	if(!FUNC1(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    	{
        	FUNC0(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
        	return -ENETDOWN;
    	}

	return 0;
}