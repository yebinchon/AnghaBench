#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct section {scalar_t__ type; int /*<<< orphan*/  link; scalar_t__ off; int /*<<< orphan*/  scn; } ;
struct TYPE_9__ {int /*<<< orphan*/  e_machine; } ;
struct readelf {size_t shnum; scalar_t__ ec; TYPE_1__ ehdr; struct section* sl; } ;
struct TYPE_11__ {scalar_t__ d_size; } ;
struct TYPE_10__ {scalar_t__ d_tag; } ;
typedef  TYPE_2__ GElf_Dyn ;
typedef  TYPE_3__ Elf_Data ;

/* Variables and functions */
 scalar_t__ DT_NULL ; 
 scalar_t__ ELFCLASS32 ; 
 scalar_t__ SHT_DYNAMIC ; 
 char* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct readelf *re)
{
	GElf_Dyn	 dyn;
	Elf_Data	*d;
	struct section	*s;
	int		 elferr, i, is_dynamic, j, jmax, nentries;

	is_dynamic = 0;

	for (i = 0; (size_t)i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->type != SHT_DYNAMIC)
			continue;
		(void) FUNC3();
		if ((d = FUNC4(s->scn, NULL)) == NULL) {
			elferr = FUNC3();
			if (elferr != 0)
				FUNC8("elf_getdata failed: %s", FUNC2(-1));
			continue;
		}
		if (d->d_size <= 0)
			continue;

		is_dynamic = 1;

		/* Determine the actual number of table entries. */
		nentries = 0;
		if (!FUNC6(s, &jmax))
			continue;
		for (j = 0; j < jmax; j++) {
			if (FUNC5(d, j, &dyn) != &dyn) {
				FUNC8("gelf_getdyn failed: %s",
				    FUNC2(-1));
				continue;
			}
			nentries ++;
			if (dyn.d_tag == DT_NULL)
				break;
                }

		FUNC7("\nDynamic section at offset 0x%jx", (uintmax_t)s->off);
		FUNC7(" contains %u entries:\n", nentries);

		if (re->ec == ELFCLASS32)
			FUNC7("%5s%12s%28s\n", "Tag", "Type", "Name/Value");
		else
			FUNC7("%5s%20s%28s\n", "Tag", "Type", "Name/Value");

		for (j = 0; j < nentries; j++) {
			if (FUNC5(d, j, &dyn) != &dyn)
				continue;
			/* Dump dynamic entry type. */
			if (re->ec == ELFCLASS32)
				FUNC7(" 0x%8.8jx", (uintmax_t)dyn.d_tag);
			else
				FUNC7(" 0x%16.16jx", (uintmax_t)dyn.d_tag);
			FUNC7(" %-20s", FUNC0(re->ehdr.e_machine,
			    dyn.d_tag));
			/* Dump dynamic entry value. */
			FUNC1(re, &dyn, s->link);
		}
	}

	if (!is_dynamic)
		FUNC7("\nThere is no dynamic section in this file.\n");
}