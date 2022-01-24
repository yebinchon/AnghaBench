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
typedef  scalar_t__ u8 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; scalar_t__* rx_buf; void** tx_buf; } ;
struct spi_message {int dummy; } ;
struct lis3l02dq_state {int /*<<< orphan*/  buf_lock; scalar_t__* rx; TYPE_1__* us; void** tx; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
typedef  int s16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 struct lis3l02dq_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_message*) ; 
 int FUNC8 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static int FUNC9(struct device *dev,
				      u8 lower_reg_address,
				      s16 *val)
{
	struct spi_message msg;
	struct iio_dev *indio_dev = FUNC2(dev);
	struct lis3l02dq_state *st = FUNC3(indio_dev);
	int ret;
	struct spi_transfer xfers[] = { {
			.tx_buf = st->tx,
			.rx_buf = st->rx,
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
		}, {
			.tx_buf = st->tx + 2,
			.rx_buf = st->rx + 2,
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,

		},
	};

	FUNC4(&st->buf_lock);
	st->tx[0] = FUNC0(lower_reg_address);
	st->tx[1] = 0;
	st->tx[2] = FUNC0(lower_reg_address+1);
	st->tx[3] = 0;

	FUNC7(&msg);
	FUNC6(&xfers[0], &msg);
	FUNC6(&xfers[1], &msg);
	ret = FUNC8(st->us, &msg);
	if (ret) {
		FUNC1(&st->us->dev, "problem when reading 16 bit register");
		goto error_ret;
	}
	*val = (s16)(st->rx[1]) | ((s16)(st->rx[3]) << 8);

error_ret:
	FUNC5(&st->buf_lock);
	return ret;
}