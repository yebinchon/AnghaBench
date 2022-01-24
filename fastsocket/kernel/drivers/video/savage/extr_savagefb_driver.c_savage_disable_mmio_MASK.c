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
struct savagefb_par {scalar_t__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ S3_SAVAGE4 ; 
 unsigned char FUNC1 (int,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char,struct savagefb_par*) ; 

__attribute__((used)) static void FUNC3(struct savagefb_par *par)
{
	unsigned char val;

	FUNC0("savage_disable_mmio\n");

	if (par->chip >= S3_SAVAGE4) {
		FUNC2(0x3d4, 0x40, par);
		val = FUNC1(0x3d5, par);
		FUNC2(0x3d5, val | 1, par);
	}
}