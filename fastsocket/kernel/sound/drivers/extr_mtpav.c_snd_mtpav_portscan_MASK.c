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
typedef  int u8 ;
struct mtpav {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtpav*,int) ; 

__attribute__((used)) static void FUNC1(struct mtpav *chip)	// put mtp into smart routing mode
{
	u8 p;

	for (p = 0; p < 8; p++) {
		FUNC0(chip, 0xf5);
		FUNC0(chip, p);
		FUNC0(chip, 0xfe);
	}
}