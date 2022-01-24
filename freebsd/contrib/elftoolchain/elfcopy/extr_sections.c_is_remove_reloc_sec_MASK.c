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
typedef  int /*<<< orphan*/  uint32_t ;
struct elfcopy {int /*<<< orphan*/  ein; } ;
struct TYPE_3__ {int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct elfcopy*,char const*) ; 

int
FUNC8(struct elfcopy *ecp, uint32_t sh_info)
{
	const char	*name;
	GElf_Shdr	 ish;
	Elf_Scn		*is;
	size_t		 indx;
	int		 elferr;

	if (FUNC3(ecp->ein, &indx) == 0)
		FUNC5(EXIT_FAILURE, "elf_getshstrndx failed: %s",
		    FUNC0(-1));

	is = FUNC2(ecp->ein, sh_info);
	if (is != NULL) {
		if (FUNC6(is, &ish) == NULL)
			FUNC5(EXIT_FAILURE, "gelf_getshdr failed: %s",
			    FUNC0(-1));
		if ((name = FUNC4(ecp->ein, indx, ish.sh_name)) ==
		    NULL)
			FUNC5(EXIT_FAILURE, "elf_strptr failed: %s",
			    FUNC0(-1));
		if (FUNC7(ecp, name))
			return (1);
		else
			return (0);
	}
	elferr = FUNC1();
	if (elferr != 0)
		FUNC5(EXIT_FAILURE, "elf_nextscn failed: %s",
		    FUNC0(elferr));

	/* Remove reloc section if we can't find the target section. */
	return (1);
}