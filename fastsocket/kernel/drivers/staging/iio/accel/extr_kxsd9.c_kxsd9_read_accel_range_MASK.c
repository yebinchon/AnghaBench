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
struct spi_transfer {int bits_per_word; int len; int cs_change; int* rx_buf; scalar_t__* tx_buf; } ;
struct spi_message {int dummy; } ;
struct kxsd9_state {int* rx; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  us; scalar_t__* tx; } ;
struct iio_dev {struct kxsd9_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  KXSD9_FS_2 131 
#define  KXSD9_FS_4 130 
#define  KXSD9_FS_6 129 
#define  KXSD9_FS_8 128 
 int KXSD9_FS_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KXSD9_REG_CTRL_C ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int FUNC7 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				      struct device_attribute *attr,
				      char *buf)
{
	int ret;
	ssize_t len = 0;
	struct iio_dev *indio_dev = FUNC1(dev);
	struct kxsd9_state *st = indio_dev->dev_data;
	struct spi_transfer xfer = {
		.bits_per_word = 8,
		.len = 2,
		.cs_change = 1,
		.tx_buf = st->tx,
		.rx_buf = st->rx,
	};
	struct spi_message msg;

	FUNC2(&st->buf_lock);
	st->tx[0] = FUNC0(KXSD9_REG_CTRL_C);
	st->tx[1] = 0;
	FUNC5(&msg);
	FUNC4(&xfer, &msg);
	ret = FUNC6(st->us, &msg);
	if (ret)
		goto error_ret;

	switch (st->rx[1] & KXSD9_FS_MASK) {
	case KXSD9_FS_8:
		len += FUNC7(buf, "8\n");
		break;
	case KXSD9_FS_6:
		len += FUNC7(buf, "6\n");
		break;
	case KXSD9_FS_4:
		len += FUNC7(buf, "4\n");
		break;
	case KXSD9_FS_2:
		len += FUNC7(buf, "2\n");
		break;
	}

error_ret:
	FUNC3(&st->buf_lock);

	return ret ? ret : len;
}