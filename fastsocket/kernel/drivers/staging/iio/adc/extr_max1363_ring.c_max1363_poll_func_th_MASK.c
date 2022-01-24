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
struct max1363_state {int /*<<< orphan*/  poll_work; } ;
struct iio_dev {struct max1363_state* dev_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct iio_dev *indio_dev)
{
	struct max1363_state *st = indio_dev->dev_data;

	FUNC0(&st->poll_work);

	return;
}