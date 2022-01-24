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
struct TYPE_2__ {scalar_t__ length; } ;
struct carlu {TYPE_1__ eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_EEPROM_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODATA ; 
 int FUNC1 (struct carlu*,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct carlu *ar)
{

	int err;

	err = FUNC1(ar, AR9170_EEPROM_START, sizeof(ar->eeprom),
				  &ar->eeprom);

#ifndef __CHECKER__
	/* don't want to handle trailing remains */
	FUNC0(sizeof(ar->eeprom) % 8);
#endif

	if (ar->eeprom.length == FUNC2(0xffff))
		return -ENODATA;

	return 0;
}