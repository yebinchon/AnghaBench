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
struct spi_transfer {int bits_per_word; int len; int cs_change; int* tx_buf; } ;
struct spi_message {int dummy; } ;
struct sca3000_state {int* tx; int /*<<< orphan*/  us; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_ADDR_UNLOCK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC4(struct sca3000_state *st)
{
	struct spi_message msg;
	struct spi_transfer xfer[3] = {
		{
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
			.tx_buf = st->tx,
		}, {
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
			.tx_buf = st->tx + 2,
		}, {
			.bits_per_word = 8,
			.len = 2,
			.cs_change = 1,
			.tx_buf = st->tx + 4,
		},
	};
	st->tx[0] = FUNC0(SCA3000_REG_ADDR_UNLOCK);
	st->tx[1] = 0x00;
	st->tx[2] = FUNC0(SCA3000_REG_ADDR_UNLOCK);
	st->tx[3] = 0x50;
	st->tx[4] = FUNC0(SCA3000_REG_ADDR_UNLOCK);
	st->tx[5] = 0xA0;
	FUNC2(&msg);
	FUNC1(&xfer[0], &msg);
	FUNC1(&xfer[1], &msg);
	FUNC1(&xfer[2], &msg);

	return FUNC3(st->us, &msg);
}