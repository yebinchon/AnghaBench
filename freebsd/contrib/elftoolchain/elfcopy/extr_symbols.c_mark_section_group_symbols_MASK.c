#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct elfcopy {int /*<<< orphan*/ * v_grp; int /*<<< orphan*/  ein; } ;
struct TYPE_4__ {scalar_t__ sh_type; size_t sh_info; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ SHT_GROUP ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct elfcopy*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(struct elfcopy *ecp, size_t sc)
{
	const char	*name;
	Elf_Scn		*s;
	GElf_Shdr	 sh;
	size_t		 indx;
	int		 elferr;

	ecp->v_grp = FUNC1((sc + 7) / 8, 1);
	if (ecp->v_grp == NULL)
		FUNC7(EXIT_FAILURE, "calloc failed");

	if (FUNC4(ecp->ein, &indx) == 0)
		FUNC8(EXIT_FAILURE, "elf_getshstrndx failed: %s",
		    FUNC2(-1));

	s = NULL;
	while ((s = FUNC5(ecp->ein, s)) != NULL) {
		if (FUNC9(s, &sh) != &sh)
			FUNC8(EXIT_FAILURE, "elf_getshdr failed: %s",
			    FUNC2(-1));

		if (sh.sh_type != SHT_GROUP)
			continue;

		if ((name = FUNC6(ecp->ein, indx, sh.sh_name)) == NULL)
			FUNC8(EXIT_FAILURE, "elf_strptr failed: %s",
			    FUNC2(-1));
		if (FUNC10(ecp, name))
			continue;

		if (sh.sh_info > 0 && sh.sh_info < sc)
			FUNC0(ecp->v_grp, sh.sh_info);
		else if (sh.sh_info != 0)
			FUNC11("invalid symbox index");
	}
	elferr = FUNC3();
	if (elferr != 0)
		FUNC8(EXIT_FAILURE, "elf_nextscn failed: %s",
		    FUNC2(elferr));
}