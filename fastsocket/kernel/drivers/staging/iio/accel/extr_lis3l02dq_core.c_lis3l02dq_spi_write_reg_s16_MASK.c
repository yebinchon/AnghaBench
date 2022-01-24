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
typedef  scalar_t__ u8 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; int cs_change; } ;
struct spi_message {int dummy; } ;
struct lis3l02dq_state {int* tx; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  us; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
typedef  int s16 ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct lis3l02dq_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
				       u8 lower_reg_address,
				       s16 value)
{
	int ret;
	struct spi_message msg;
	struct iio_dev *indio_dev = FUNC1(dev);
	struct lis3l02dq_state *st = FUNC2(indio_dev);
	struct spi_transfer xfers[] = { {
			.tx_buf = st->tx,
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
		}, {
			.tx_buf = st->tx + 2,
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
		},
	};

	FUNC3(&st->buf_lock);
	st->tx[0] = FUNC0(lower_reg_address);
	st->tx[1] = value & 0xFF;
	st->tx[2] = FUNC0(lower_reg_address + 1);
	st->tx[3] = (value >> 8) & 0xFF;

	FUNC6(&msg);
	FUNC5(&xfers[0], &msg);
	FUNC5(&xfers[1], &msg);
	ret = FUNC7(st->us, &msg);
	FUNC4(&st->buf_lock);

	return ret;
}