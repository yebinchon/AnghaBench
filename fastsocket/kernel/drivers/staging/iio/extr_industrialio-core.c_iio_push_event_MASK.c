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
struct iio_dev {int /*<<< orphan*/ * event_interfaces; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct iio_dev *dev_info,
		   int ev_line,
		   int ev_code,
		   s64 timestamp)
{
	return FUNC0(&dev_info->event_interfaces[ev_line],
				ev_code, timestamp, NULL);
}