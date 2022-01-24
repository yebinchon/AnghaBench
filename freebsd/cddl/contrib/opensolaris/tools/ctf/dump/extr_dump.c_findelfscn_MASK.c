#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  e_shstrndx; } ;
struct TYPE_5__ {int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static Elf_Scn *
FUNC4(Elf *elf, GElf_Ehdr *ehdr, const char *secname)
{
	GElf_Shdr shdr;
	Elf_Scn *scn;
	char *name;

	for (scn = NULL; (scn = FUNC0(elf, scn)) != NULL; ) {
		if (FUNC2(scn, &shdr) != NULL && (name =
		    FUNC1(elf, ehdr->e_shstrndx, shdr.sh_name)) != NULL &&
		    FUNC3(name, secname) == 0)
			return (scn);
	}

	return (NULL);
}