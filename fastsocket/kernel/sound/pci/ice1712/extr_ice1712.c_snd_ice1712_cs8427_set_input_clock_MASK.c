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
struct snd_ice1712 {int /*<<< orphan*/  i2c; int /*<<< orphan*/  cs8427; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_ice1712 *ice, int spdif_clock)
{
	unsigned char reg[2] = { 0x80 | 4, 0 };   /* CS8427 auto increment | register number 4 + data */
	unsigned char val, nval;
	int res = 0;

	FUNC0(ice->i2c);
	if (FUNC2(ice->cs8427, reg, 1) != 1) {
		FUNC3(ice->i2c);
		return -EIO;
	}
	if (FUNC1(ice->cs8427, &val, 1) != 1) {
		FUNC3(ice->i2c);
		return -EIO;
	}
	nval = val & 0xf0;
	if (spdif_clock)
		nval |= 0x01;
	else
		nval |= 0x04;
	if (val != nval) {
		reg[1] = nval;
		if (FUNC2(ice->cs8427, reg, 2) != 2) {
			res = -EIO;
		} else {
			res++;
		}
	}
	FUNC3(ice->i2c);
	return res;
}