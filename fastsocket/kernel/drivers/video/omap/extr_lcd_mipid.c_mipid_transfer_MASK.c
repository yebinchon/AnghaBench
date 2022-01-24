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
typedef  int /*<<< orphan*/  xfer ;
typedef  int u8 ;
typedef  int u16 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; int* rx_buf; } ;
struct spi_message {int dummy; } ;
struct mipid_device {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static void FUNC6(struct mipid_device *md, int cmd, const u8 *wbuf,
			   int wlen, u8 *rbuf, int rlen)
{
	struct spi_message	m;
	struct spi_transfer	*x, xfer[4];
	u16			w;
	int			r;

	FUNC0(md->spi == NULL);

	FUNC4(&m);

	FUNC2(xfer, 0, sizeof(xfer));
	x = &xfer[0];

	cmd &=  0xff;
	x->tx_buf		= &cmd;
	x->bits_per_word	= 9;
	x->len			= 2;
	FUNC3(x, &m);

	if (wlen) {
		x++;
		x->tx_buf		= wbuf;
		x->len			= wlen;
		x->bits_per_word	= 9;
		FUNC3(x, &m);
	}

	if (rlen) {
		x++;
		x->rx_buf	= &w;
		x->len		= 1;
		FUNC3(x, &m);

		if (rlen > 1) {
			/* Arrange for the extra clock before the first
			 * data bit.
			 */
			x->bits_per_word = 9;
			x->len		 = 2;

			x++;
			x->rx_buf	 = &rbuf[1];
			x->len		 = rlen - 1;
			FUNC3(x, &m);
		}
	}

	r = FUNC5(md->spi, &m);
	if (r < 0)
		FUNC1(&md->spi->dev, "spi_sync %d\n", r);

	if (rlen)
		rbuf[0] = w & 0xff;
}