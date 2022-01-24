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
struct sca3000_state {int /*<<< orphan*/  interrupt_handler_ws; int /*<<< orphan*/  last_timestamp; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct iio_dev *dev_info,
			      int index,
			      s64 timestamp,
			      int no_test)
{
	struct sca3000_state *st = dev_info->dev_data;

	st->last_timestamp = timestamp;
	FUNC0(&st->interrupt_handler_ws);

	return 0;
}