#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct _Dwarf_Cie {int dummy; } ;
typedef  scalar_t__ int8_t ;
struct TYPE_8__ {scalar_t__ cie_index; scalar_t__ cie_instlen; int /*<<< orphan*/ * cie_initinst; void* cie_ra; scalar_t__ cie_daf; void* cie_caf; int /*<<< orphan*/ * cie_augment; } ;
struct TYPE_7__ {int /*<<< orphan*/  dbgp_cielen; int /*<<< orphan*/  dbgp_cielist; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  void* Dwarf_Small ;
typedef  int /*<<< orphan*/ * Dwarf_Ptr ;
typedef  TYPE_1__* Dwarf_P_Debug ;
typedef  TYPE_2__* Dwarf_P_Cie ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int /*<<< orphan*/  DW_DLE_MEMORY ; 
 scalar_t__ DW_DLV_NOCOUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  cie_next ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (char*) ; 

Dwarf_Unsigned
FUNC6(Dwarf_P_Debug dbg, char *augmenter, Dwarf_Small caf,
    Dwarf_Small daf, Dwarf_Small ra, Dwarf_Ptr initinst,
    Dwarf_Unsigned inst_len, Dwarf_Error *error)
{
	Dwarf_P_Cie cie;

	if (dbg == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_NOCOUNT);
	}

	if ((cie = FUNC2(1, sizeof(struct _Dwarf_Cie))) == NULL) {
		FUNC0(dbg, error,DW_DLE_MEMORY);
		return (DW_DLV_NOCOUNT);
	}
	FUNC1(&dbg->dbgp_cielist, cie, cie_next);

	cie->cie_index = dbg->dbgp_cielen++;

	if (augmenter != NULL) {
		cie->cie_augment = (uint8_t *) FUNC5(augmenter);
		if (cie->cie_augment == NULL) {
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLV_NOCOUNT);
		}
	}

	cie->cie_caf = caf;
	cie->cie_daf = (int8_t) daf; /* daf is signed. */
	cie->cie_ra = ra;
	if (initinst != NULL && inst_len > 0) {
		cie->cie_initinst = FUNC3((size_t) inst_len);
		if (cie->cie_initinst == NULL) {
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLV_NOCOUNT);
		}
		FUNC4(cie->cie_initinst, initinst, inst_len);
		cie->cie_instlen = inst_len;
	}

	return (cie->cie_index);
}