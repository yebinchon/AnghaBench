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
struct TYPE_4__ {scalar_t__ ld_cents; int /*<<< orphan*/ * ld_s; int /*<<< orphan*/  ld_hipc; int /*<<< orphan*/  ld_lopc; } ;
typedef  TYPE_1__ Dwarf_Locdesc ;
typedef  int /*<<< orphan*/  Dwarf_Loc ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(Dwarf_Debug dbg, Dwarf_Locdesc *dst, Dwarf_Locdesc *src,
    Dwarf_Error *error)
{

	FUNC1(src != NULL && dst != NULL);

	dst->ld_lopc = src->ld_lopc;
	dst->ld_hipc = src->ld_hipc;
	dst->ld_cents = src->ld_cents;

	if (dst->ld_cents > 0) {
		dst->ld_s = FUNC2(dst->ld_cents, sizeof(Dwarf_Loc));
		if (dst->ld_s == NULL) {
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLE_MEMORY);
		}
		FUNC3(dst->ld_s, src->ld_s, src->ld_cents *
		    sizeof(Dwarf_Loc));
	} else
		dst->ld_s = NULL;

	return (DW_DLE_NONE);
}