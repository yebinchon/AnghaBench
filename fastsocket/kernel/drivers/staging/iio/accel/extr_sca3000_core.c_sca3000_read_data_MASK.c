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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct sca3000_state {TYPE_1__* us; int /*<<< orphan*/ * tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (TYPE_1__*,struct spi_message*) ; 

int FUNC8(struct sca3000_state *st,
		      uint8_t reg_address_high,
		      u8 **rx_p,
		      int len)
{
	int ret;
	struct spi_message msg;
	struct spi_transfer xfer = {
		.bits_per_word = 8,
		.len = len + 1,
		.cs_change = 1,
		.tx_buf = st->tx,
	};

	*rx_p = FUNC4(len + 1, GFP_KERNEL);
	if (*rx_p == NULL) {
		ret = -ENOMEM;
		goto error_ret;
	}
	xfer.rx_buf = *rx_p;
	st->tx[0] = FUNC0(reg_address_high);
	FUNC6(&msg);
	FUNC5(&xfer, &msg);

	ret = FUNC7(st->us, &msg);

	if (ret) {
		FUNC1(FUNC2(&st->us->dev), "problem reading register");
		goto error_free_rx;
	}

	return 0;
error_free_rx:
	FUNC3(*rx_p);
error_ret:
	return ret;

}