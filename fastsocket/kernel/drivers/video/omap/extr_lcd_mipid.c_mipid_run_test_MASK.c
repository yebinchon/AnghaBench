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
typedef  int u16 ;
struct mipid_device {TYPE_1__* spi; int /*<<< orphan*/  fbdev; } ;
struct lcd_panel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int MIPID_TEST_FAILED ; 
 int MIPID_TEST_INVALID ; 
 int MIPID_TEST_RGB_LINES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int const,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const) ; 
 int FUNC5 (struct mipid_device*) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 struct mipid_device* FUNC7 (struct lcd_panel*) ; 

__attribute__((used)) static int FUNC8(struct lcd_panel *panel, int test_num)
{
	struct mipid_device *md = FUNC7(panel);
	static const u16 test_values[4] = {
		0x0000, 0xffff, 0xaaaa, 0x5555,
	};
	int i;

	if (test_num != MIPID_TEST_RGB_LINES)
		return MIPID_TEST_INVALID;

	for (i = 0; i < FUNC0(test_values); i++) {
		int delay;
		unsigned long tmo;

		FUNC4(md->fbdev, test_values[i]);
		tmo = jiffies + FUNC2(100);
		delay = 25;
		while (1) {
			u16 pixel;

			FUNC3(delay);
			pixel = FUNC5(md);
			if (pixel == test_values[i])
				break;
			if (FUNC6(jiffies, tmo)) {
				FUNC1(&md->spi->dev,
					"MIPI LCD RGB I/F test failed: "
					"expecting %04x, got %04x\n",
					test_values[i], pixel);
				return MIPID_TEST_FAILED;
			}
			delay = 10;
		}
	}

	return 0;
}