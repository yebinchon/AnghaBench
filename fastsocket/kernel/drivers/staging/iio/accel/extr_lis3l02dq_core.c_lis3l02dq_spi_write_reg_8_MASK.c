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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct lis3l02dq_state {int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  us; int /*<<< orphan*/ * tx; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct lis3l02dq_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct spi_message*) ; 

int FUNC8(struct device *dev,
			      u8 reg_address,
			      u8 *val)
{
	int ret;
	struct spi_message msg;
	struct iio_dev *indio_dev = FUNC1(dev);
	struct lis3l02dq_state *st = FUNC2(indio_dev);
	struct spi_transfer xfer = {
		.tx_buf = st->tx,
		.bits_per_word = 8,
		.len = 2,
		.cs_change = 1,
	};

	FUNC3(&st->buf_lock);
	st->tx[0] = FUNC0(reg_address);
	st->tx[1] = *val;

	FUNC6(&msg);
	FUNC5(&xfer, &msg);
	ret =  FUNC7(st->us, &msg);
	FUNC4(&st->buf_lock);

	return ret;
}