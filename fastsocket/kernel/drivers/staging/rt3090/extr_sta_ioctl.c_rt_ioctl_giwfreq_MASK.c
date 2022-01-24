#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int m; int e; } ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  Channel; } ;
struct TYPE_5__ {TYPE_1__ CommonCfg; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 

int FUNC3(struct net_device *dev,
		   struct iw_request_info *info,
		   struct iw_freq *freq, char *extra)
{
	PRTMP_ADAPTER pAdapter = NULL;
	UCHAR ch;
	ULONG	m = 2412000;

	pAdapter = FUNC2(dev);
	if (pAdapter == NULL)
	{
		/* if 1st open fail, pAd will be free;
		   So the net_dev->priv will be NULL in 2rd open */
		return -ENETDOWN;
	}

		ch = pAdapter->CommonCfg.Channel;

	FUNC0(RT_DEBUG_TRACE,("==>rt_ioctl_giwfreq  %d\n", ch));

	FUNC1(ch, m);
	freq->m = m * 100;
	freq->e = 1;
	return 0;
}