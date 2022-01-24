#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {int /*<<< orphan*/  SsidLen; int /*<<< orphan*/  Ssid; } ;
struct TYPE_7__ {TYPE_1__ CommonCfg; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENETDOWN ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  fOP_STATUS_MEDIA_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *dev,
			 struct iw_request_info *info,
			 struct iw_point *data, char *essid)
{
	PRTMP_ADAPTER pAdapter = FUNC3(dev);

	if (pAdapter == NULL)
	{
		/* if 1st open fail, pAd will be free;
		   So the net_dev->priv will be NULL in 2rd open */
		return -ENETDOWN;
	}

	data->flags = 1;
    if (FUNC1(pAdapter))
    {
        data->length  = 0;
        return 0;
    }

	if (FUNC2(pAdapter, fOP_STATUS_MEDIA_STATE_CONNECTED))
	{
		FUNC0(RT_DEBUG_TRACE ,("MediaState is connected\n"));
		data->length = pAdapter->CommonCfg.SsidLen;
		FUNC4(essid, pAdapter->CommonCfg.Ssid, pAdapter->CommonCfg.SsidLen);
	}
	else
	{//the ANY ssid was specified
		data->length  = 0;
		FUNC0(RT_DEBUG_TRACE ,("MediaState is not connected, ess\n"));
	}

	return 0;

}