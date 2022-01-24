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
struct TYPE_5__ {scalar_t__ sh_type; scalar_t__ sh_addr; scalar_t__ sh_size; scalar_t__ sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 scalar_t__ SHT_STRTAB ; 
 scalar_t__ SHT_SYMTAB ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  radix ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  text_size_total ; 

__attribute__((used)) static void
FUNC4(Elf *elf, GElf_Ehdr *elfhdr, GElf_Shdr *shdr)
{
	char *section_name;

	section_name = FUNC0(elf, elfhdr->e_shstrndx,
	    (size_t) shdr->sh_name);
	if ((shdr->sh_type == SHT_SYMTAB ||
	    shdr->sh_type == SHT_STRTAB || shdr->sh_type == SHT_RELA ||
	    shdr->sh_type == SHT_REL) && shdr->sh_addr == 0)
		return;
	FUNC1();
	FUNC2(section_name, 0);
	FUNC3(shdr->sh_size, radix, 1);
	FUNC3(shdr->sh_addr, radix, 2);
	text_size_total += shdr->sh_size;
}