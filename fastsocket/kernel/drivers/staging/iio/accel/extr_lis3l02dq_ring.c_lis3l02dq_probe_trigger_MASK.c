#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lis3l02dq_state {TYPE_3__* trig; TYPE_2__* us; } ;
struct iio_dev {int id; struct lis3l02dq_state* dev_data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {scalar_t__ name; int /*<<< orphan*/ * control_attrs; int /*<<< orphan*/ * try_reenable; int /*<<< orphan*/ * set_trigger_state; struct lis3l02dq_state* private_data; int /*<<< orphan*/  owner; TYPE_1__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IIO_TRIGGER_NAME_LENGTH ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lis3l02dq_data_rdy_trigger_set_state ; 
 int /*<<< orphan*/  lis3l02dq_trig_try_reen ; 
 int /*<<< orphan*/  lis3l02dq_trigger_attr_group ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(struct iio_dev *indio_dev)
{
	int ret;
	struct lis3l02dq_state *state = indio_dev->dev_data;

	state->trig = FUNC0();
	state->trig->name = FUNC4(IIO_TRIGGER_NAME_LENGTH, GFP_KERNEL);
	if (!state->trig->name) {
		ret = -ENOMEM;
		goto error_free_trig;
	}
	FUNC5((char *)state->trig->name,
		 IIO_TRIGGER_NAME_LENGTH,
		 "lis3l02dq-dev%d", indio_dev->id);
	state->trig->dev.parent = &state->us->dev;
	state->trig->owner = THIS_MODULE;
	state->trig->private_data = state;
	state->trig->set_trigger_state = &lis3l02dq_data_rdy_trigger_set_state;
	state->trig->try_reenable = &lis3l02dq_trig_try_reen;
	state->trig->control_attrs = &lis3l02dq_trigger_attr_group;
	ret = FUNC2(state->trig);
	if (ret)
		goto error_free_trig_name;

	return 0;

error_free_trig_name:
	FUNC3(state->trig->name);
error_free_trig:
	FUNC1(state->trig);

	return ret;
}