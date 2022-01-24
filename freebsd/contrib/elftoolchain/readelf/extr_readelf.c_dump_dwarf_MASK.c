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
struct readelf {int dop; int /*<<< orphan*/  dbg; int /*<<< orphan*/  elf; } ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int DW_A ; 
 int /*<<< orphan*/  DW_DLC_READ ; 
 int DW_DLE_DEBUG_INFO_NULL ; 
 int DW_F ; 
 int DW_FF ; 
 int DW_I ; 
 int DW_L ; 
 int DW_LL ; 
 int DW_M ; 
 int DW_O ; 
 int DW_P ; 
 int DW_R ; 
 int DW_RR ; 
 int DW_S ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC2 (struct readelf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct readelf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC5 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC6 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC7 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC8 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC9 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC10 (struct readelf*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct readelf *re)
{
	Dwarf_Error de;
	int error;

	if (FUNC11(re->elf, DW_DLC_READ, NULL, NULL, &re->dbg, &de)) {
		if ((error = FUNC13(de)) != DW_DLE_DEBUG_INFO_NULL)
			FUNC15(EXIT_FAILURE, "dwarf_elf_init failed: %s",
			    FUNC12(de));
		return;
	}

	if (re->dop & DW_A)
		FUNC0(re);
	if (re->dop & DW_L)
		FUNC4(re);
	if (re->dop & DW_LL)
		FUNC5(re);
	if (re->dop & DW_I) {
		FUNC3(re, 0);
		FUNC3(re, 1);
	}
	if (re->dop & DW_P)
		FUNC8(re);
	if (re->dop & DW_R)
		FUNC1(re);
	if (re->dop & DW_RR)
		FUNC9(re);
	if (re->dop & DW_M)
		FUNC7(re);
	if (re->dop & DW_F)
		FUNC2(re, 0);
	else if (re->dop & DW_FF)
		FUNC2(re, 1);
	if (re->dop & DW_S)
		FUNC10(re);
	if (re->dop & DW_O)
		FUNC6(re);

	FUNC14(re->dbg, &de);
}