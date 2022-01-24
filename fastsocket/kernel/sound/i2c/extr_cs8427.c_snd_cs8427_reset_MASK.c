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
struct snd_i2c_device {int /*<<< orphan*/  bus; struct cs8427* private_data; } ;
struct cs8427 {int* regmap; unsigned long reset_timeout; } ;

/* Variables and functions */
 size_t CS8427_REG_CLOCKSOURCE ; 
 int /*<<< orphan*/  CS8427_REG_RECVERRORS ; 
 int CS8427_RUN ; 
 int CS8427_RXDAES3INPUT ; 
 int CS8427_RXDILRCK ; 
 int CS8427_RXDMASK ; 
 int CS8427_UNLOCK ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_i2c_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_i2c_device*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct snd_i2c_device *cs8427)
{
	struct cs8427 *chip;
	unsigned long end_time;
	int data, aes3input = 0;

	if (FUNC1(!cs8427))
		return;
	chip = cs8427->private_data;
	FUNC4(cs8427->bus);
	if ((chip->regmap[CS8427_REG_CLOCKSOURCE] & CS8427_RXDAES3INPUT) ==
	    CS8427_RXDAES3INPUT)  /* AES3 bit is set */
		aes3input = 1;
	chip->regmap[CS8427_REG_CLOCKSOURCE] &= ~(CS8427_RUN | CS8427_RXDMASK);
	FUNC3(cs8427, CS8427_REG_CLOCKSOURCE,
			     chip->regmap[CS8427_REG_CLOCKSOURCE]);
	FUNC7(200);
	chip->regmap[CS8427_REG_CLOCKSOURCE] |= CS8427_RUN | CS8427_RXDILRCK;
	FUNC3(cs8427, CS8427_REG_CLOCKSOURCE,
			     chip->regmap[CS8427_REG_CLOCKSOURCE]);
	FUNC7(200);
	FUNC5(cs8427->bus);
	end_time = jiffies + chip->reset_timeout;
	while (FUNC6(end_time, jiffies)) {
		FUNC4(cs8427->bus);
		data = FUNC2(cs8427, CS8427_REG_RECVERRORS);
		FUNC5(cs8427->bus);
		if (!(data & CS8427_UNLOCK))
			break;
		FUNC0(1);
	}
	FUNC4(cs8427->bus);
	chip->regmap[CS8427_REG_CLOCKSOURCE] &= ~CS8427_RXDMASK;
	if (aes3input)
		chip->regmap[CS8427_REG_CLOCKSOURCE] |= CS8427_RXDAES3INPUT;
	FUNC3(cs8427, CS8427_REG_CLOCKSOURCE,
			     chip->regmap[CS8427_REG_CLOCKSOURCE]);
	FUNC5(cs8427->bus);
}