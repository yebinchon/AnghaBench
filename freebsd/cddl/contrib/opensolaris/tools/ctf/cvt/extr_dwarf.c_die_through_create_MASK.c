#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int t_type; int /*<<< orphan*/  t_name; int /*<<< orphan*/  t_flags; int /*<<< orphan*/  t_size; int /*<<< orphan*/  t_tdesc; } ;
typedef  TYPE_2__ tdesc_t ;
struct TYPE_14__ {TYPE_2__* ii_dtype; int /*<<< orphan*/  ii_name; int /*<<< orphan*/  ii_type; } ;
typedef  TYPE_3__ iidesc_t ;
struct TYPE_15__ {TYPE_1__* dw_td; int /*<<< orphan*/  dw_ptrsz; } ;
typedef  TYPE_4__ dwarf_t ;
struct TYPE_12__ {int /*<<< orphan*/  td_iihash; } ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/ * Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_type ; 
 int /*<<< orphan*/  II_TYPE ; 
 int POINTER ; 
 int /*<<< orphan*/  TDESC_F_RESOLVED ; 
 int TYPEDEF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_3__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(dwarf_t *dw, Dwarf_Die die, Dwarf_Off off, tdesc_t *tdp,
    int type, const char *typename)
{
	Dwarf_Attribute attr;

	FUNC0(3, "die %llu <%llx>: creating %s type %d\n", off, off, typename, type);

	tdp->t_type = type;

	if ((attr = FUNC1(dw, die, DW_AT_type, 0)) != NULL) {
		tdp->t_tdesc = FUNC2(dw, die, DW_AT_type);
	} else {
		tdp->t_tdesc = FUNC4(dw);
	}

	if (type == POINTER)
		tdp->t_size = dw->dw_ptrsz;

	tdp->t_flags |= TDESC_F_RESOLVED;

	if (type == TYPEDEF) {
		iidesc_t *ii = FUNC5(sizeof (iidesc_t));
		ii->ii_type = II_TYPE;
		ii->ii_name = FUNC6(tdp->t_name);
		ii->ii_dtype = tdp;

		FUNC3(dw->dw_td->td_iihash, ii);
	}
}