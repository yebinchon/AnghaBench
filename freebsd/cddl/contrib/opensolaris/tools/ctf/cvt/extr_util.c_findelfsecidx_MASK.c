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
struct TYPE_5__ {scalar_t__ sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 

int
FUNC7(Elf *elf, const char *file, const char *tofind)
{
	Elf_Scn *scn = NULL;
	GElf_Ehdr ehdr;
	GElf_Shdr shdr;

	if (FUNC4(elf, &ehdr) == NULL)
		FUNC3(file, "Couldn't read ehdr");

	while ((scn = FUNC1(elf, scn)) != NULL) {
		char *name;

		if (FUNC5(scn, &shdr) == NULL) {
			FUNC3(file,
			    "Couldn't read header for section %d",
			    FUNC0(scn));
		}

		if ((name = FUNC2(elf, ehdr.e_shstrndx,
		    (size_t)shdr.sh_name)) == NULL) {
			FUNC3(file,
			    "Couldn't get name for section %d",
			    FUNC0(scn));
		}

		if (FUNC6(name, tofind) == 0)
			return (FUNC0(scn));
	}

	return (-1);
}