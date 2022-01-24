#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int m; int e; } ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  Channel; } ;
struct TYPE_4__ {TYPE_1__ CommonCfg; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 

int FUNC2(struct net_device *dev,
		   struct iw_request_info *info,
		   struct iw_freq *freq, char *extra)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;
	UCHAR ch = pAdapter->CommonCfg.Channel;
	ULONG	m;

	FUNC0(RT_DEBUG_TRACE,("==>rt_ioctl_giwfreq  %d\n", ch));

    FUNC1(ch, m);
	freq->m = m * 100;
	freq->e = 1;
	return 0;
}