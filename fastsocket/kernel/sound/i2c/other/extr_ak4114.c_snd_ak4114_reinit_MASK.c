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
struct ak4114 {int init; int /*<<< orphan*/  work; scalar_t__* kctls; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ak4114*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(struct ak4114 *chip)
{
	chip->init = 1;
	FUNC2();
	FUNC1();
	FUNC0(chip);
	/* bring up statistics / event queing */
	chip->init = 0;
	if (chip->kctls[0])
		FUNC3(&chip->work, HZ / 10);
}