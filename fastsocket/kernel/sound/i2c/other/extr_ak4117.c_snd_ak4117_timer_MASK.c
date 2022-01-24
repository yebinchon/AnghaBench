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
struct TYPE_2__ {scalar_t__ expires; } ;
struct ak4117 {TYPE_1__ timer; scalar_t__ init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct ak4117*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct ak4117 *chip = (struct ak4117 *)data;

	if (chip->init)
		return;
	FUNC1(chip, 0);
	chip->timer.expires = 1 + jiffies;
	FUNC0(&chip->timer);
}