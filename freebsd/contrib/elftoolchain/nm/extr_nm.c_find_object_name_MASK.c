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
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  DW_AT_specification ; 
 scalar_t__ DW_DLV_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(Dwarf_Debug dbg, Dwarf_Die die)
{
	Dwarf_Die ret_die;
	Dwarf_Attribute at;
	Dwarf_Off off;
	Dwarf_Error de;
	const char *str;
	char *name;

	if (FUNC1(die, DW_AT_name, &str, &de) == DW_DLV_OK) {
		if ((name = FUNC4(str)) == NULL) {
			FUNC5("strdup");
			return (NULL);
		}
		return (name);
	}

	if (FUNC0(die, DW_AT_specification, &at, &de) != DW_DLV_OK)
		return (NULL);

	if (FUNC2(at, &off, &de) != DW_DLV_OK)
		return (NULL);

	if (FUNC3(dbg, off, &ret_die, &de) != DW_DLV_OK)
		return (NULL);

	return (FUNC6(dbg, ret_die));
}