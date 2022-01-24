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
typedef  int u16 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int delay_usecs; int* rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct kxsd9_state {int* rx; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  us; int /*<<< orphan*/ * tx; } ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {struct kxsd9_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int FUNC7 (char*,char*,int) ; 
 struct iio_dev_attr* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				struct device_attribute *attr,
				char *buf)
{
	struct spi_message msg;
	int ret;
	ssize_t len = 0;
	u16 val;
	struct iio_dev_attr *this_attr = FUNC8(attr);
	struct iio_dev *indio_dev = FUNC1(dev);
	struct kxsd9_state *st = indio_dev->dev_data;
	struct spi_transfer xfers[] = {
		{
			.bits_per_word = 8,
			.len = 1,
			.cs_change = 0,
			.delay_usecs = 200,
			.tx_buf = st->tx,
		}, {
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
			.rx_buf = st->rx,
		},
	};

	FUNC2(&st->buf_lock);
	st->tx[0] = FUNC0(this_attr->address);
	FUNC5(&msg);
	FUNC4(&xfers[0], &msg);
	FUNC4(&xfers[1], &msg);
	ret = FUNC6(st->us, &msg);
	if (ret)
		goto error_ret;
	val = (((u16)(st->rx[0])) << 8) | (st->rx[1] & 0xF0);
	len = FUNC7(buf, "%d\n", val);
error_ret:
	FUNC3(&st->buf_lock);

	return ret ? ret : len;
}