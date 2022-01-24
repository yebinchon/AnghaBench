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
struct TYPE_7__ {int /*<<< orphan*/  e_shstrndx; } ;
struct TYPE_6__ {int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static Elf_Scn *FUNC6(Elf *elf, GElf_Ehdr *ep,
				    GElf_Shdr *shp, const char *name,
				    size_t *idx)
{
	Elf_Scn *sec = NULL;
	size_t cnt = 1;

	/* Elf is corrupted/truncated, avoid calling elf_strptr. */
	if (!FUNC2(FUNC0(elf, ep->e_shstrndx), NULL))
		return NULL;

	while ((sec = FUNC1(elf, sec)) != NULL) {
		char *str;

		FUNC4(sec, shp);
		str = FUNC3(elf, ep->e_shstrndx, shp->sh_name);
		if (!FUNC5(name, str)) {
			if (idx)
				*idx = cnt;
			break;
		}
		++cnt;
	}

	return sec;
}