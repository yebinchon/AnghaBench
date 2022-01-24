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
struct iio_dev {scalar_t__ id; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_idr ; 

__attribute__((used)) static int FUNC1(struct iio_dev *dev_info,
				  struct idr *this_idr)
{

	dev_info->id = FUNC0(&iio_idr);
	if (dev_info->id < 0)
		return dev_info->id;
	return 0;
}