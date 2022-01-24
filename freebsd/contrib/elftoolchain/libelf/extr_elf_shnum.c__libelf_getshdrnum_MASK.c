#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t e_nscn; } ;
struct TYPE_6__ {TYPE_2__ e_elf; } ;
struct TYPE_8__ {scalar_t__ e_kind; int e_class; TYPE_1__ e_u; } ;
typedef  TYPE_3__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 scalar_t__ ELF_K_ELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(Elf *e, size_t *shnum)
{
	void *eh;
	int ec;

	if (e == NULL || e->e_kind != ELF_K_ELF ||
	    ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
		FUNC0(ARGUMENT, 0);
		return (-1);
	}

	if ((eh = FUNC1(e, ec, 0)) == NULL)
		return (-1);

	*shnum = e->e_u.e_elf.e_nscn;

	return (0);
}