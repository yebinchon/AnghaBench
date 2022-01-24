#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  eo_elf; } ;
typedef  int Dwarf_Small ;
typedef  TYPE_1__ Dwarf_Elf_Object ;

/* Variables and functions */
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

Dwarf_Small
FUNC2(void *obj)
{
	Dwarf_Elf_Object *e;

	e = obj;
	FUNC0(e != NULL);

	if (FUNC1(e->eo_elf) == ELFCLASS32)
		return (4);
	else
		return (8);
}