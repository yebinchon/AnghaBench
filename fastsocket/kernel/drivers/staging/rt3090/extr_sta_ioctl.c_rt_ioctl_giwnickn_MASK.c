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
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;
struct TYPE_3__ {scalar_t__ nickname; } ;
typedef  int /*<<< orphan*/  PSTRING ;
typedef  TYPE_1__* PRTMP_ADAPTER ;

/* Variables and functions */
 int ENETDOWN ; 
 TYPE_1__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct net_device *dev,
			 struct iw_request_info *info,
			 struct iw_point *data, char *nickname)
{
	PRTMP_ADAPTER pAdapter = FUNC0(dev);

	if (pAdapter == NULL)
	{
		/* if 1st open fail, pAd will be free;
		   So the net_dev->priv will be NULL in 2rd open */
		return -ENETDOWN;
	}

	if (data->length > FUNC2((PSTRING) pAdapter->nickname) + 1)
		data->length = FUNC2((PSTRING) pAdapter->nickname) + 1;
	if (data->length > 0) {
		FUNC1(nickname, pAdapter->nickname, data->length-1);
		nickname[data->length-1] = '\0';
	}
	return 0;
}