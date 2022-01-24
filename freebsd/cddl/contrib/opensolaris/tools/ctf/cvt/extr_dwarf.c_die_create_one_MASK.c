#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  t_name; scalar_t__ t_id; } ;
typedef  TYPE_1__ tdesc_t ;
struct TYPE_17__ {scalar_t__ dw_maxoff; } ;
typedef  TYPE_2__ dwarf_t ;
struct TYPE_18__ {int dc_flags; int /*<<< orphan*/  (* dc_create ) (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ;} ;
typedef  TYPE_3__ die_creator_t ;
typedef  scalar_t__ Dwarf_Off ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DW_F_NOTDP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(dwarf_t *dw, Dwarf_Die die)
{
	Dwarf_Off off = FUNC2(dw, die);
	const die_creator_t *dc;
	Dwarf_Half tag;
	tdesc_t *tdp;

	FUNC0(3, "die %llu <%llx>: create_one\n", off, off);

	if (off > dw->dw_maxoff) {
		FUNC8("illegal die offset %llu (max %llu)\n", off,
		    dw->dw_maxoff);
	}

	tag = FUNC3(dw, die);

	if ((dc = FUNC4(tag)) == NULL) {
		FUNC0(2, "die %llu: ignoring tag type %x\n", off, tag);
		return;
	}

	if ((tdp = FUNC7(dw, off)) == NULL &&
	    !(dc->dc_flags & DW_F_NOTDP)) {
		tdp = FUNC9(sizeof (tdesc_t));
		tdp->t_id = off;
		FUNC6(dw, tdp);
	}

	if (tdp != NULL)
		tdp->t_name = FUNC1(dw, die);

	dc->dc_create(dw, die, off, tdp);
}