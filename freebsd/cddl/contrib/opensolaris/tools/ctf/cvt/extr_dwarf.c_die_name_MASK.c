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
typedef  int /*<<< orphan*/  dwarf_t ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(dwarf_t *dw, Dwarf_Die die)
{
	char *str = NULL;

	(void) FUNC0(dw, die, DW_AT_name, &str, 0);
	if (str == NULL)
		str = FUNC1("");

	return (str);
}