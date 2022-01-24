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
struct TYPE_2__ {struct lms283gf05_pdata* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct lms283gf05_state {struct spi_device* spi; } ;
struct lms283gf05_pdata {int /*<<< orphan*/  reset_inverted; int /*<<< orphan*/  reset_gpio; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disp_initseq ; 
 int /*<<< orphan*/  disp_pdwnseq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lms283gf05_state* FUNC2 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct lcd_device *ld, int power)
{
	struct lms283gf05_state *st = FUNC2(ld);
	struct spi_device *spi = st->spi;
	struct lms283gf05_pdata *pdata = spi->dev.platform_data;

	if (power) {
		if (pdata)
			FUNC3(pdata->reset_gpio,
					pdata->reset_inverted);
		FUNC4(spi, disp_initseq, FUNC0(disp_initseq));
	} else {
		FUNC4(spi, disp_pdwnseq, FUNC0(disp_pdwnseq));
		if (pdata)
			FUNC1(pdata->reset_gpio,
					pdata->reset_inverted);
	}

	return 0;
}