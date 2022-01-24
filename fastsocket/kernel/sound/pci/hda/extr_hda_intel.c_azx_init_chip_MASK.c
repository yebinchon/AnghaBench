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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct azx {int initialized; TYPE_1__ posbuf; int /*<<< orphan*/  single_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLBASE ; 
 int /*<<< orphan*/  DPUBASE ; 
 int /*<<< orphan*/  FUNC0 (struct azx*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*) ; 
 int /*<<< orphan*/  FUNC3 (struct azx*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct azx *chip, int full_reset)
{
	if (chip->initialized)
		return;

	/* reset controller */
	FUNC3(chip, full_reset);

	/* initialize interrupts */
	FUNC1(chip);
	FUNC2(chip);

	/* initialize the codec command I/O */
	if (!chip->single_cmd)
		FUNC0(chip);

	/* program the position buffer */
	FUNC4(chip, DPLBASE, (u32)chip->posbuf.addr);
	FUNC4(chip, DPUBASE, FUNC5(chip->posbuf.addr));

	chip->initialized = 1;
}