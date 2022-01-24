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
struct lis3l02dq_state {int inter; int /*<<< orphan*/  work_trigger_to_ring; int /*<<< orphan*/  last_timestamp; } ;
struct iio_dev {TYPE_1__* trig; } ;
struct TYPE_2__ {int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 struct lis3l02dq_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iio_dev *indio_dev)
{
  struct lis3l02dq_state *st = FUNC0(indio_dev);
	st->last_timestamp = indio_dev->trig->timestamp;
	FUNC1(&st->work_trigger_to_ring);
	/* Indicate that this interrupt is being handled */

	/* Technically this is trigger related, but without this
	 * handler running there is currently now way for the interrupt
	 * to clear.
	 */
	st->inter = 1;
}