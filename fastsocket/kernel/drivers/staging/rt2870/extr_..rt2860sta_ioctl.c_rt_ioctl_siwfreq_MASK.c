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
struct iw_freq {int e; int m; } ;
struct TYPE_5__ {int Channel; } ;
struct TYPE_6__ {TYPE_1__ CommonCfg; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  SIOCSIWFREQ ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 

int FUNC4(struct net_device *dev,
			struct iw_request_info *info,
			struct iw_freq *freq, char *extra)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;
	int 	chan = -1;

    //check if the interface is down
    if(!FUNC3(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
        FUNC1(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
        return -ENETDOWN;
    }


	if (freq->e > 1)
		return -EINVAL;

	if((freq->e == 0) && (freq->m <= 1000))
		chan = freq->m;	// Setting by channel number
	else
		FUNC2( (freq->m /100) , chan); // Setting by frequency - search the table , like 2.412G, 2.422G,

    if (FUNC0(pAdapter, chan) == TRUE)
    {
	pAdapter->CommonCfg.Channel = chan;
	FUNC1(RT_DEBUG_ERROR, ("==>rt_ioctl_siwfreq::SIOCSIWFREQ[cmd=0x%x] (Channel=%d)\n", SIOCSIWFREQ, pAdapter->CommonCfg.Channel));
    }
    else
        return -EINVAL;

	return 0;
}