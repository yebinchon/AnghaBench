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
struct pmac_keywest {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENXIO ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct pmac_keywest *i2c, unsigned int *regs)
{
	while (*regs > 0) {
		int err, count = 10;
		do {
			err = FUNC1(i2c->client,
							regs[0], regs[1]);
			if (err >= 0)
				break;
			FUNC0("(W) i2c error %d\n", err);
			FUNC2(10);
		} while (count--);
		if (err < 0)
			return -ENXIO;
		regs += 2;
	}
	return 0;
}