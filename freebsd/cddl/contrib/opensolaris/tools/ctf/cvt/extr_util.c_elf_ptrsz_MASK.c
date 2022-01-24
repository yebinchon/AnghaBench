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
struct TYPE_3__ {scalar_t__* e_ident; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 size_t EI_CLASS ; 
 scalar_t__ ELFCLASS32 ; 
 scalar_t__ ELFCLASS64 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

size_t
FUNC3(Elf *elf)
{
	GElf_Ehdr ehdr;

	if (FUNC1(elf, &ehdr) == NULL) {
		FUNC2("failed to read ELF header: %s\n",
		    FUNC0(-1));
	}

	if (ehdr.e_ident[EI_CLASS] == ELFCLASS32)
		return (4);
	else if (ehdr.e_ident[EI_CLASS] == ELFCLASS64)
		return (8);
	else
		FUNC2("unknown ELF class %d\n", ehdr.e_ident[EI_CLASS]);

	/*NOTREACHED*/
	return (0);
}