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
typedef  int /*<<< orphan*/  u32 ;
struct snd_als300 {int revision; scalar_t__ chip_type; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ DEVICE_ALS300_PLUS ; 
 int IRQ_ENABLE ; 
 int /*<<< orphan*/  IRQ_SET_BIT ; 
 int /*<<< orphan*/  MISC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_als300 *chip, int cmd)
{
	u32 tmp = FUNC2(chip->port, MISC_CONTROL);
	FUNC0();

	/* boolean XOR check, since old vs. new hardware have
	   directly reversed bit setting for ENABLE and DISABLE.
	   ALS300+ acts like newer versions of ALS300 */
	if (((chip->revision > 5 || chip->chip_type == DEVICE_ALS300_PLUS) ^
						(cmd == IRQ_ENABLE)) == 0)
		tmp |= IRQ_SET_BIT;
	else
		tmp &= ~IRQ_SET_BIT;
	FUNC3(chip->port, MISC_CONTROL, tmp);
	FUNC1();
}