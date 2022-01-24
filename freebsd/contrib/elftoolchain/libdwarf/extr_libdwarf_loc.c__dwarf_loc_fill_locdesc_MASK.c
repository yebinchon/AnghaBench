#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int ld_cents; int /*<<< orphan*/ * ld_s; } ;
typedef  TYPE_1__ Dwarf_Locdesc ;
typedef  int /*<<< orphan*/  Dwarf_Loc ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_LOC_EXPR_BAD ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 

int
FUNC4(Dwarf_Debug dbg, Dwarf_Locdesc *llbuf, uint8_t *in,
    uint64_t in_len, uint8_t pointer_size, uint8_t offset_size,
    uint8_t version, Dwarf_Error *error)
{
	int num;

	FUNC2(llbuf != NULL);
	FUNC2(in != NULL);
	FUNC2(in_len > 0);

	/* Compute the number of locations. */
	if ((num = FUNC1(dbg, NULL, pointer_size, offset_size,
	    version, in, in_len)) < 0) {
		FUNC0(dbg, error, DW_DLE_LOC_EXPR_BAD);
		return (DW_DLE_LOC_EXPR_BAD);
	}

	llbuf->ld_cents = num;
	if (num <= 0)
		return (DW_DLE_NONE);

	if ((llbuf->ld_s = FUNC3(num, sizeof(Dwarf_Loc))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	(void) FUNC1(dbg, llbuf, pointer_size, offset_size,
	    version, in, in_len);

	return (DW_DLE_NONE);
}