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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(stderr, "Usage:\n");
	FUNC1(stderr, "\teeprom_fix FW-FILE SWITCH [ADDRESS [VALUE MASK]]\n");

	FUNC1(stderr, "\nDescription:\n");
	FUNC1(stderr, "\tThis utility manage a set of overrides which "
			"commands the driver\n\tto load customized EEPROM' "
			"data for all specified addresses.\n");

	FUNC1(stderr, "\nParameters:\n");
	FUNC1(stderr, "\t'FW-FILE'  = firmware file [basename]\n");
	FUNC1(stderr, "\t'SWITCH'   = [=|d|D]\n");
	FUNC1(stderr, "\t | '='       => add/set value for address\n");
	FUNC1(stderr, "\t | 'D'       => removes all EEPROM overrides\n");
	FUNC1(stderr, "\t * 'd'       => removed override for 'address'\n");
	FUNC1(stderr, "\n\t'ADDRESS'  = location of the EEPROM override\n");
	FUNC1(stderr, "\t\t     NB: must be a multiple of 4.\n");
	FUNC1(stderr, "\t\t     an address map can be found in eeprom.h.\n");
	FUNC1(stderr, "\n\t'VALUE'    = replacement value\n");
	FUNC1(stderr, "\t'MASK'     = mask for the value placement.\n\n");

	FUNC0(EXIT_FAILURE);
}