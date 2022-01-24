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
struct sca3000_state {int /*<<< orphan*/  us; int /*<<< orphan*/ * tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_message*) ; 

int FUNC4(struct sca3000_state *st, u8 address, u8 val)
{
	struct spi_transfer xfer = {
		.bits_per_word = 8,
		.len = 2,
		.cs_change = 1,
		.tx_buf = st->tx,
	};
	struct spi_message msg;

	st->tx[0] = FUNC0(address);
	st->tx[1] = val;
	FUNC2(&msg);
	FUNC1(&xfer, &msg);

	return FUNC3(st->us, &msg);
}