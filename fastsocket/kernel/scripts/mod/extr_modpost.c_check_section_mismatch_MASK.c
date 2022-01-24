#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct elf_info {int dummy; } ;
typedef  enum mismatch { ____Placeholder_mismatch } mismatch ;
struct TYPE_11__ {int /*<<< orphan*/  r_offset; int /*<<< orphan*/  r_addend; } ;
struct TYPE_10__ {int /*<<< orphan*/  st_shndx; } ;
typedef  TYPE_1__ Elf_Sym ;
typedef  TYPE_2__ Elf_Rela ;

/* Variables and functions */
 int NO_MISMATCH ; 
 TYPE_1__* FUNC0 (struct elf_info*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct elf_info*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct elf_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*,char const*,char const*) ; 
 int FUNC6 (char const*,char const*) ; 
 char* FUNC7 (struct elf_info*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(const char *modname, struct elf_info *elf,
                                   Elf_Rela *r, Elf_Sym *sym, const char *fromsec)
{
	const char *tosec;
	enum mismatch mismatch;

	tosec = FUNC4(elf, sym->st_shndx);
	mismatch = FUNC6(fromsec, tosec);
	if (mismatch != NO_MISMATCH) {
		Elf_Sym *to;
		Elf_Sym *from;
		const char *tosym;
		const char *fromsym;

		from = FUNC1(elf, r->r_offset, fromsec);
		fromsym = FUNC7(elf, from);
		to = FUNC0(elf, r->r_addend, sym);
		tosym = FUNC7(elf, to);

		/* check whitelist - we may ignore it */
		if (FUNC5(fromsec, fromsym, tosec, tosym)) {
			FUNC3(modname, mismatch,
			   fromsec, r->r_offset, fromsym,
			   FUNC2(from), tosec, tosym,
			   FUNC2(to));
		}
	}
}