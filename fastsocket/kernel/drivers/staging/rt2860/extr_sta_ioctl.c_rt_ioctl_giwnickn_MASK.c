#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;
struct TYPE_2__ {int /*<<< orphan*/  nickname; } ;
typedef  TYPE_1__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct net_device *dev,
			 struct iw_request_info *info,
			 struct iw_point *data, char *nickname)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;

	if (data->length > FUNC1(pAdapter->nickname) + 1)
		data->length = FUNC1(pAdapter->nickname) + 1;
	if (data->length > 0) {
		FUNC0(nickname, pAdapter->nickname, data->length-1);
		nickname[data->length-1] = '\0';
	}
	return 0;
}