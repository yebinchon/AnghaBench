#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pubname_callback_param {int found; int /*<<< orphan*/  sp_die; scalar_t__ file; int /*<<< orphan*/  cu_die; int /*<<< orphan*/  function; } ;
struct TYPE_3__ {int /*<<< orphan*/  cu_offset; int /*<<< orphan*/  die_offset; } ;
typedef  TYPE_1__ Dwarf_Global ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
 int DWARF_CB_ABORT ; 
 int DWARF_CB_OK ; 
 scalar_t__ DW_TAG_subprogram ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Dwarf *dbg, Dwarf_Global *gl, void *data)
{
	struct pubname_callback_param *param = data;

	if (FUNC2(dbg, gl->die_offset, param->sp_die)) {
		if (FUNC3(param->sp_die) != DW_TAG_subprogram)
			return DWARF_CB_OK;

		if (FUNC0(param->sp_die, param->function)) {
			if (!FUNC2(dbg, gl->cu_offset, param->cu_die))
				return DWARF_CB_OK;

			if (param->file &&
			    FUNC4(param->file, FUNC1(param->sp_die)))
				return DWARF_CB_OK;

			param->found = 1;
			return DWARF_CB_ABORT;
		}
	}

	return DWARF_CB_OK;
}