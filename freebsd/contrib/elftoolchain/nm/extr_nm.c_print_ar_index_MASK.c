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
typedef  scalar_t__ off_t ;
struct TYPE_6__ {char* ar_name; char* ar_rawname; } ;
struct TYPE_5__ {scalar_t__ as_off; char* as_name; } ;
typedef  int /*<<< orphan*/  Elf_Cmd ;
typedef  TYPE_1__ Elf_Arsym ;
typedef  TYPE_2__ Elf_Arhdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(int fd, Elf *arf)
{
	Elf *elf;
	Elf_Arhdr *arhdr;
	Elf_Arsym *arsym;
	Elf_Cmd cmd;
	off_t start;
	size_t arsym_size;

	if (arf == NULL)
		return;

	if ((arsym = FUNC3(arf, &arsym_size)) == NULL)
		return;

	FUNC5("\nArchive index:\n");

	start = arsym->as_off;
	cmd = ELF_C_READ;
	while (arsym_size > 1) {
		if (FUNC4(arf, arsym->as_off) == arsym->as_off &&
		    (elf = FUNC0(fd, cmd, arf)) != NULL) {
			if ((arhdr = FUNC2(elf)) != NULL)
				FUNC5("%s in %s\n", arsym->as_name,
				    arhdr->ar_name != NULL ?
				    arhdr->ar_name : arhdr->ar_rawname);
			FUNC1(elf);
		}
		++arsym;
		--arsym_size;
	}

	FUNC4(arf, start);
}