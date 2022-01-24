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
typedef  scalar_t__ uint64_t ;
typedef  char* uint32_t ;
struct TYPE_3__ {scalar_t__ p_memsz; scalar_t__ p_filesz; scalar_t__ p_vaddr; scalar_t__ p_type; int p_flags; } ;
typedef  TYPE_1__ GElf_Phdr ;
typedef  int /*<<< orphan*/  GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int BUF_SIZE ; 
 int PF_W ; 
 int PF_X ; 
 scalar_t__ PT_LOAD ; 
 scalar_t__ STYLE_SYSV ; 
 int /*<<< orphan*/  data_size ; 
 int /*<<< orphan*/  radix ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char*,char*) ; 
 scalar_t__ style ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  text_size ; 
 int /*<<< orphan*/  text_size_total ; 

__attribute__((used)) static void
FUNC4(Elf *elf, GElf_Ehdr *elfhdr, GElf_Phdr *phdr,
    uint32_t idx, const char *name)
{
	uint64_t addr, size;
	int split;
	char buf[BUF_SIZE];

	if (elf == NULL || elfhdr == NULL || phdr == NULL)
		return;

	split = (phdr->p_memsz > 0) && 	(phdr->p_filesz > 0) &&
	    (phdr->p_memsz > phdr->p_filesz);

	if (style == STYLE_SYSV) {
		(void) FUNC0(buf, BUF_SIZE,
		    "%s%d%s", name, idx, (split ? "a" : ""));
		FUNC1();
		FUNC2(buf, 0);
		FUNC3(phdr->p_filesz, radix, 1);
		FUNC3(phdr->p_vaddr, radix, 2);
		text_size_total += phdr->p_filesz;
		if (split) {
			size = phdr->p_memsz - phdr->p_filesz;
			addr = phdr->p_vaddr + phdr->p_filesz;
			(void) FUNC0(buf, BUF_SIZE, "%s%d%s", name,
			    idx, "b");
			text_size_total += phdr->p_memsz - phdr->p_filesz;
			FUNC1();
			FUNC2(buf, 0);
			FUNC3(size, radix, 1);
			FUNC3(addr, radix, 2);
		}
	} else {
		if (phdr->p_type != PT_LOAD)
			return;
		if ((phdr->p_flags & PF_W) && !(phdr->p_flags & PF_X)) {
			data_size += phdr->p_filesz;
			if (split)
				data_size += phdr->p_memsz - phdr->p_filesz;
		} else {
			text_size += phdr->p_filesz;
			if (split)
				text_size += phdr->p_memsz - phdr->p_filesz;
		}
	}
}