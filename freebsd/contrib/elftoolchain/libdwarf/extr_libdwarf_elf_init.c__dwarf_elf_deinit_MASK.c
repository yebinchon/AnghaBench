#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* dbg_iface; } ;
struct TYPE_6__ {scalar_t__ eo_seccnt; struct TYPE_6__* eo_shdr; struct TYPE_6__* eo_data; struct TYPE_6__* ed_alloc; struct TYPE_6__* object; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  TYPE_1__ Dwarf_Obj_Access_Interface ;
typedef  TYPE_1__ Dwarf_Elf_Object ;
typedef  TYPE_3__* Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(Dwarf_Debug dbg)
{
	Dwarf_Obj_Access_Interface *iface;
	Dwarf_Elf_Object *e;
	int i;

	iface = dbg->dbg_iface;
	FUNC0(iface != NULL);

	e = iface->object;
	FUNC0(e != NULL);

	if (e->eo_data) {
		for (i = 0; (Dwarf_Unsigned) i < e->eo_seccnt; i++) {
			if (e->eo_data[i].ed_alloc)
				FUNC1(e->eo_data[i].ed_alloc);
		}
		FUNC1(e->eo_data);
	}
	if (e->eo_shdr)
		FUNC1(e->eo_shdr);

	FUNC1(e);
	FUNC1(iface);

	dbg->dbg_iface = NULL;
}