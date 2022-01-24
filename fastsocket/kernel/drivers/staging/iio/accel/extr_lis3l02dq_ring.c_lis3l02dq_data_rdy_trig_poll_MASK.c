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
struct lis3l02dq_state {struct iio_trigger* trig; } ;
struct iio_trigger {int /*<<< orphan*/  timestamp; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 struct lis3l02dq_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *dev_info,
				       int index,
				       s64 timestamp,
				       int no_test)
{
	struct lis3l02dq_state *st = FUNC0(dev_info);
	struct iio_trigger *trig = st->trig;

	trig->timestamp = timestamp;
	FUNC1(trig);

	return IRQ_HANDLED;
}