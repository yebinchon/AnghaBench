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
struct iio_dev {int /*<<< orphan*/  pollfunc; scalar_t__ trig; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct iio_dev *indio_dev)
{
	if (indio_dev->trig)
		return FUNC0(indio_dev->trig,
						     indio_dev->pollfunc);
	else
		return 0;
}