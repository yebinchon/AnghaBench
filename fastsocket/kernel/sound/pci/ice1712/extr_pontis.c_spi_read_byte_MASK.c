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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PONTIS_CS_CLK ; 
 int PONTIS_CS_RDATA ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned int FUNC3(struct snd_ice1712 *ice)
{
	int i;
	unsigned int val = 0;

	for (i = 0; i < 8; i++) {
		val <<= 1;
		FUNC0(ice, PONTIS_CS_CLK, 0);
		FUNC2(1);
		if (FUNC1(ice) & PONTIS_CS_RDATA)
			val |= 1;
		FUNC2(1);
		FUNC0(ice, PONTIS_CS_CLK, 1);
		FUNC2(1);
	}
	return val;
}