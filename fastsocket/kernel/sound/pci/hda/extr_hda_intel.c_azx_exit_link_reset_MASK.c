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
 int /*<<< orphan*/  FUNC1 (struct azx*,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct azx *chip)
{
	unsigned long timeout;

	FUNC1(chip, GCTL, FUNC0(chip, GCTL) | ICH6_GCTL_RESET);

	timeout = jiffies + FUNC2(100);
	while (!FUNC0(chip, GCTL) &&
			FUNC3(jiffies, timeout))
		FUNC4(500, 1000);
}