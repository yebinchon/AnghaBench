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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int /*<<< orphan*/ * rx_buf; void** tx_buf; } ;
struct spi_message {int dummy; } ;
struct lis3l02dq_state {int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  us; TYPE_1__* indio_dev; void** tx; } ;
struct TYPE_2__ {int scan_count; int scan_mask; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*) ; 
 struct spi_transfer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void** read_all_tx_array ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct spi_message*) ; 

int FUNC8(struct lis3l02dq_state *st, u8 *rx_array)
{
	struct spi_transfer *xfers;
	struct spi_message msg;
	int ret, i, j = 0;

	xfers = FUNC2((st->indio_dev->scan_count) * 2
			* sizeof(*xfers), GFP_KERNEL);
	if (!xfers)
		return -ENOMEM;

	FUNC3(&st->buf_lock);

	for (i = 0; i < FUNC0(read_all_tx_array)/4; i++) {
		if (st->indio_dev->scan_mask & (1 << i)) {
			/* lower byte */
			xfers[j].tx_buf = st->tx + 2*j;
			st->tx[2*j] = read_all_tx_array[i*4];
			st->tx[2*j + 1] = 0;
			if (rx_array)
				xfers[j].rx_buf = rx_array + j*2;
			xfers[j].bits_per_word = 8;
			xfers[j].len = 2;
			xfers[j].cs_change = 1;
			j++;

			/* upper byte */
			xfers[j].tx_buf = st->tx + 2*j;
			st->tx[2*j] = read_all_tx_array[i*4 + 2];
			st->tx[2*j + 1] = 0;
			if (rx_array)
				xfers[j].rx_buf = rx_array + j*2;
			xfers[j].bits_per_word = 8;
			xfers[j].len = 2;
			xfers[j].cs_change = 1;
			j++;
		}
	}
	/* After these are transmitted, the rx_buff should have
	 * values in alternate bytes
	 */
	FUNC6(&msg);
	for (j = 0; j < st->indio_dev->scan_count * 2; j++)
		FUNC5(&xfers[j], &msg);

	ret = FUNC7(st->us, &msg);
	FUNC4(&st->buf_lock);
	FUNC1(xfers);

	return ret;
}