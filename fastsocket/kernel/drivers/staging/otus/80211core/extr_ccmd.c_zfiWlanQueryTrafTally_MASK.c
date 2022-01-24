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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u8_t ;
struct zsTrafTally {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  trafTally; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t *dev, struct zsTrafTally *tally)
{
	FUNC3(dev);

	FUNC1();

	FUNC2(dev);
	FUNC0((u8_t *)tally, (u8_t *)&wd->trafTally,
						sizeof(struct zsTrafTally));
	FUNC4(dev);
}