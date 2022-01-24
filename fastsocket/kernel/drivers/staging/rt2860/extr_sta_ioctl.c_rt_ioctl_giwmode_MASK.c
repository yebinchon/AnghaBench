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
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  PRTMP_ADAPTER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IW_MODE_ADHOC ; 
 int /*<<< orphan*/  IW_MODE_AUTO ; 
 int /*<<< orphan*/  IW_MODE_INFRA ; 
 int /*<<< orphan*/  IW_MODE_MONITOR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 

int FUNC4(struct net_device *dev,
		   struct iw_request_info *info,
		   __u32 *mode, char *extra)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;

	if (FUNC0(pAdapter))
		*mode = IW_MODE_ADHOC;
    else if (FUNC2(pAdapter))
		*mode = IW_MODE_INFRA;
    else if (FUNC3(pAdapter))
    {
        *mode = IW_MODE_MONITOR;
    }
    else
        *mode = IW_MODE_AUTO;

	FUNC1(RT_DEBUG_TRACE, ("==>rt_ioctl_giwmode(mode=%d)\n", *mode));
	return 0;
}