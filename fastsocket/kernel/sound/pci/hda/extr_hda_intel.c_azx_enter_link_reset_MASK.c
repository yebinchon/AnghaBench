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
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCTL ; 
 int ICH6_GCTL_RESET ; 
 int FUNC0 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct azx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct azx *chip)
{
	unsigned long timeout;

	/* reset controller */
	FUNC2(chip, GCTL, FUNC1(chip, GCTL) & ~ICH6_GCTL_RESET);

	timeout = jiffies + FUNC3(100);
	while ((FUNC0(chip, GCTL) & ICH6_GCTL_RESET) &&
			FUNC4(jiffies, timeout))
		FUNC5(500, 1000);
}