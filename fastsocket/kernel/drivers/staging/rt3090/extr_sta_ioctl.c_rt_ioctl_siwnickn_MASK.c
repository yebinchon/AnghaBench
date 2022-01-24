#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;
struct TYPE_4__ {int /*<<< orphan*/  nickname; } ;
typedef  TYPE_1__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENETDOWN ; 
 scalar_t__ IW_ESSID_MAX_SIZE ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC5(struct net_device *dev,
			 struct iw_request_info *info,
			 struct iw_point *data, char *nickname)
{
	PRTMP_ADAPTER pAdapter = FUNC1(dev);

    //check if the interface is down
    if(!FUNC2(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
        FUNC0(RT_DEBUG_TRACE ,("INFO::Network is down!\n"));
        return -ENETDOWN;
    }

	if (data->length > IW_ESSID_MAX_SIZE)
		return -EINVAL;

	FUNC4(pAdapter->nickname, 0, IW_ESSID_MAX_SIZE + 1);
	FUNC3(pAdapter->nickname, nickname, data->length);


	return 0;
}