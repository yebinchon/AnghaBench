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
struct TYPE_3__ {scalar_t__ e_class; } ;
typedef  int /*<<< orphan*/  Elf_Type ;
typedef  TYPE_1__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 scalar_t__ ELFCLASS32 ; 
 scalar_t__ ELFCLASS64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int,size_t) ; 

size_t
FUNC2(Elf *e, Elf_Type t, size_t c, unsigned int v)
{

	if (e == NULL) {
		FUNC0(ARGUMENT, 0);
		return (0);
	}

	if (e->e_class == ELFCLASS32 || e->e_class == ELFCLASS64)
		return (FUNC1(t, e->e_class, v, c));

	FUNC0(ARGUMENT, 0);
	return (0);
}