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
typedef  int /*<<< orphan*/  Elf ;
typedef  int /*<<< orphan*/  Dwarf_Ptr ;
typedef  int /*<<< orphan*/  Dwarf_Handler ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int DW_DLC_READ ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int DW_DLE_DEBUG_INFO_NULL ; 
 int DW_DLE_NONE ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_NO_ENTRY ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(int fd, int mode, Dwarf_Handler errhand, Dwarf_Ptr errarg,
    Dwarf_Debug *ret_dbg, Dwarf_Error *error)
{
	Dwarf_Debug dbg;
	Elf *elf;
	int ret;

	if (fd < 0 || ret_dbg == NULL) {
		FUNC1(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	if (mode != DW_DLC_READ) {
		FUNC1(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	if (FUNC7(EV_CURRENT) == EV_NONE) {
		FUNC0(NULL, error);
		return (DW_DLV_ERROR);
	}

	if ((elf = FUNC6(fd, ELF_C_READ, NULL)) == NULL) {
		FUNC0(NULL, error);
		return (DW_DLV_ERROR);
	}

	if (FUNC2(&dbg, mode, error) != DW_DLE_NONE)
		return (DW_DLV_ERROR);

	if (FUNC4(dbg, elf, error) != DW_DLE_NONE) {
		FUNC8(dbg);
		return (DW_DLV_ERROR);
	}

	if ((ret = FUNC5(dbg, 0, errhand, errarg, error)) !=
	    DW_DLE_NONE) {
		FUNC3(dbg);
		FUNC8(dbg);
		if (ret == DW_DLE_DEBUG_INFO_NULL)
			return (DW_DLV_NO_ENTRY);
		else
			return (DW_DLV_ERROR);
	}

	*ret_dbg = dbg;

	return (DW_DLV_OK);
}