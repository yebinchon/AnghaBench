#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sh_link; int sh_size; int sh_entsize; } ;
struct TYPE_5__ {int si_nument; TYPE_4__ si_shdr; int /*<<< orphan*/ * si_strd; int /*<<< orphan*/ * si_symd; } ;
typedef  TYPE_1__ symit_data_t ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_1__* FUNC5 (int) ; 

symit_data_t *
FUNC6(Elf *elf, const char *file)
{
	symit_data_t *si;
	Elf_Scn *scn;
	int symtabidx;

	if ((symtabidx = FUNC3(elf, file, ".symtab")) < 0)
		return (NULL);

	si = FUNC5(sizeof (symit_data_t));

	if ((scn = FUNC1(elf, symtabidx)) == NULL ||
	    FUNC4(scn, &si->si_shdr) == NULL ||
	    (si->si_symd = FUNC0(scn, NULL)) == NULL)
		FUNC2(file, "Cannot read .symtab");

	if ((scn = FUNC1(elf, si->si_shdr.sh_link)) == NULL ||
	    (si->si_strd = FUNC0(scn, NULL)) == NULL)
		FUNC2(file, "Cannot read strings for .symtab");

	si->si_nument = si->si_shdr.sh_size / si->si_shdr.sh_entsize;

	return (si);
}