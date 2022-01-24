#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct lis3l02dq_state {TYPE_2__* us; TYPE_1__* indio_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LIS3L02DQ_DEFAULT_CTRL1 ; 
 scalar_t__ LIS3L02DQ_DEFAULT_CTRL2 ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_1_ADDR ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_2_ADDR ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_WAKE_UP_CFG_ADDR ; 
 scalar_t__ LIS3L02DQ_REG_WAKE_UP_CFG_LATCH_SRC ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct lis3l02dq_state *st)
{
	int ret;
	u8 val, valtest;

	st->us->mode = SPI_MODE_3;

	FUNC3(st->us);

	val = LIS3L02DQ_DEFAULT_CTRL1;
	/* Write suitable defaults to ctrl1 */
	ret = FUNC2(&st->indio_dev->dev,
					LIS3L02DQ_REG_CTRL_1_ADDR,
					&val);
	if (ret) {
		FUNC0(&st->us->dev, "problem with setup control register 1");
		goto err_ret;
	}
	/* Repeat as sometimes doesn't work first time?*/
	ret = FUNC2(&st->indio_dev->dev,
					LIS3L02DQ_REG_CTRL_1_ADDR,
					&val);
	if (ret) {
		FUNC0(&st->us->dev, "problem with setup control register 1");
		goto err_ret;
	}

	/* Read back to check this has worked acts as loose test of correct
	 * chip */
	ret = FUNC1(&st->indio_dev->dev,
				       LIS3L02DQ_REG_CTRL_1_ADDR,
				       &valtest);
	if (ret || (valtest != val)) {
		FUNC0(&st->indio_dev->dev, "device not playing ball");
		ret = -EINVAL;
		goto err_ret;
	}

	val = LIS3L02DQ_DEFAULT_CTRL2;
	ret = FUNC2(&st->indio_dev->dev,
					LIS3L02DQ_REG_CTRL_2_ADDR,
					&val);
	if (ret) {
		FUNC0(&st->us->dev, "problem with setup control register 2");
		goto err_ret;
	}

	val = LIS3L02DQ_REG_WAKE_UP_CFG_LATCH_SRC;
	ret = FUNC2(&st->indio_dev->dev,
					LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
					&val);
	if (ret)
		FUNC0(&st->us->dev, "problem with interrupt cfg register");
err_ret:

	return ret;
}