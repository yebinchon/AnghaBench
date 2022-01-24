#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef  int __u32 ;
struct TYPE_5__ {int /*<<< orphan*/  WpaState; } ;
struct TYPE_6__ {TYPE_1__ StaCfg; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENETDOWN ; 
#define  IW_MODE_ADHOC 130 
#define  IW_MODE_INFRA 129 
#define  IW_MODE_MONITOR 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  SS_NOTUSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 

int FUNC3(struct net_device *dev,
		   struct iw_request_info *info,
		   __u32 *mode, char *extra)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;

	//check if the interface is down
    if(!FUNC1(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
    	FUNC0(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
       	return -ENETDOWN;
    }

	switch (*mode)
	{
		case IW_MODE_ADHOC:
			FUNC2(pAdapter, "Adhoc");
			break;
		case IW_MODE_INFRA:
			FUNC2(pAdapter, "Infra");
			break;
        case IW_MODE_MONITOR:
			FUNC2(pAdapter, "Monitor");
			break;
		default:
			FUNC0(RT_DEBUG_TRACE, ("===>rt_ioctl_siwmode::SIOCSIWMODE (unknown %d)\n", *mode));
			return -EINVAL;
	}

	// Reset Ralink supplicant to not use, it will be set to start when UI set PMK key
	pAdapter->StaCfg.WpaState = SS_NOTUSE;

	return 0;
}