#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;
struct TYPE_3__ {int /*<<< orphan*/  nickname; } ;
typedef  TYPE_1__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENETDOWN ; 
 scalar_t__ IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(struct net_device *dev,
			 struct iw_request_info *info,
			 struct iw_point *data, char *nickname)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;

    //check if the interface is down
    if(!FUNC1(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
        FUNC0(RT_DEBUG_TRACE ,("INFO::Network is down!\n"));
        return -ENETDOWN;
    }

	if (data->length > IW_ESSID_MAX_SIZE)
		return -EINVAL;

	FUNC3(pAdapter->nickname, 0, IW_ESSID_MAX_SIZE + 1);
	FUNC2(pAdapter->nickname, nickname, data->length);


	return 0;
}