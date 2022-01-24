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
struct elfdump {int /*<<< orphan*/  elf; int /*<<< orphan*/  snl; } ;
struct TYPE_4__ {scalar_t__ p_type; size_t p_offset; } ;
typedef  TYPE_1__ GElf_Phdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ PT_INTERP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (struct elfdump*,char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(struct elfdump *ed)
{
	const char *s;
	GElf_Phdr phdr;
	size_t filesize, i, phnum;

	if (!FUNC1(&ed->snl) && FUNC5(ed, "PT_INTERP") == NULL)
		return;

	if ((s = FUNC4(ed->elf, &filesize)) == NULL) {
		FUNC7("elf_rawfile failed: %s", FUNC2(-1));
		return;
	}
	if (!FUNC3(ed->elf, &phnum)) {
		FUNC7("elf_getphnum failed: %s", FUNC2(-1));
		return;
	}
	for (i = 0; i < phnum; i++) {
		if (FUNC6(ed->elf, i, &phdr) != &phdr) {
			FUNC7("elf_getphdr failed: %s", FUNC2(-1));
			continue;
		}
		if (phdr.p_type == PT_INTERP) {
			if (phdr.p_offset >= filesize) {
				FUNC7("invalid phdr offset");
				continue;
			}
			FUNC0("\ninterp:\n");
			FUNC0("\t%s\n", s + phdr.p_offset);
		}
	}
}