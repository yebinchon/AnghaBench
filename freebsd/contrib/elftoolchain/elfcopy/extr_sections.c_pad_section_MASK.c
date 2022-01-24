#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct section {scalar_t__ pad_sz; scalar_t__ sz; int /*<<< orphan*/  os; int /*<<< orphan*/ * pad; } ;
struct elfcopy {int /*<<< orphan*/  fill; } ;
struct TYPE_7__ {int d_align; scalar_t__ d_off; scalar_t__ d_size; int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_type; int /*<<< orphan*/ * d_buf; } ;
struct TYPE_6__ {scalar_t__ sh_size; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_T_BYTE ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct elfcopy *ecp, struct section *s)
{
	GElf_Shdr	 osh;
	Elf_Data	*od;

	if (s == NULL || s->pad_sz == 0)
		return;

	if ((s->pad = FUNC6(s->pad_sz)) == NULL)
		FUNC2(EXIT_FAILURE, "malloc failed");
	FUNC7(s->pad, ecp->fill, s->pad_sz);

	/* Create a new Elf_Data to contain the padding bytes. */
	if ((od = FUNC1(s->os)) == NULL)
		FUNC3(EXIT_FAILURE, "elf_newdata() failed: %s",
		    FUNC0(-1));
	od->d_align = 1;
	od->d_off = s->sz;
	od->d_buf = s->pad;
	od->d_type = ELF_T_BYTE;
	od->d_size = s->pad_sz;
	od->d_version = EV_CURRENT;

	/* Update section header. */
	if (FUNC4(s->os, &osh) == NULL)
		FUNC3(EXIT_FAILURE, "gelf_getshdr() failed: %s",
		    FUNC0(-1));
	osh.sh_size = s->sz + s->pad_sz;
	if (!FUNC5(s->os, &osh))
		FUNC3(EXIT_FAILURE, "elf_update_shdr failed: %s",
		    FUNC0(-1));
}