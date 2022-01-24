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
struct iio_dev {int /*<<< orphan*/  ring; int /*<<< orphan*/  pollfunc; scalar_t__ trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct iio_dev *indio_dev)
{
	/* ensure that the trigger has been detached */
	if (indio_dev->trig) {
		FUNC0(indio_dev->trig);
		FUNC2(indio_dev->trig,
					      indio_dev->pollfunc);
	}
	FUNC3(indio_dev->pollfunc);
	FUNC1(indio_dev->ring);
}