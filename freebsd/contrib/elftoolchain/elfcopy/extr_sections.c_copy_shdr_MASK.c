#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct section {scalar_t__ type; scalar_t__ sz; int nocopy; char const* name; int /*<<< orphan*/  os; int /*<<< orphan*/ * buf; int /*<<< orphan*/  align; int /*<<< orphan*/  off; int /*<<< orphan*/  vma; int /*<<< orphan*/  is; } ;
struct elfcopy {int dummy; } ;
typedef  int /*<<< orphan*/  ish ;
struct TYPE_6__ {scalar_t__ sh_type; scalar_t__ sh_size; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_entsize; int /*<<< orphan*/  sh_addralign; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_addr; } ;
typedef  TYPE_1__ GElf_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int SF_ALLOC ; 
 int SF_CODE ; 
 int SF_CONTENTS ; 
 int SF_READONLY ; 
 int /*<<< orphan*/  SHF_ALLOC ; 
 int /*<<< orphan*/  SHF_EXECINSTR ; 
 int /*<<< orphan*/  SHF_INFO_LINK ; 
 int /*<<< orphan*/  SHF_WRITE ; 
 scalar_t__ SHT_NOBITS ; 
 scalar_t__ SHT_PROGBITS ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/  FUNC0 (struct elfcopy*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 

void
FUNC8(struct elfcopy *ecp, struct section *s, const char *name, int copy,
    int sec_flags)
{
	GElf_Shdr ish, osh;

	if (FUNC5(s->is, &ish) == NULL)
		FUNC4(EXIT_FAILURE, "gelf_getshdr() failed: %s",
		    FUNC2(-1));
	if (FUNC5(s->os, &osh) == NULL)
		FUNC4(EXIT_FAILURE, "gelf_getshdr() failed: %s",
		    FUNC2(-1));

	if (copy)
		(void) FUNC7(&osh, &ish, sizeof(ish));
	else {
		osh.sh_type		= s->type;
		osh.sh_addr		= s->vma;
		osh.sh_offset		= s->off;
		osh.sh_size		= s->sz;
		osh.sh_link		= ish.sh_link;
		osh.sh_info		= ish.sh_info;
		osh.sh_addralign	= s->align;
		osh.sh_entsize		= ish.sh_entsize;

		if (sec_flags) {
			osh.sh_flags = 0;
			if (sec_flags & SF_ALLOC)
				osh.sh_flags |= SHF_ALLOC;
			if ((sec_flags & SF_READONLY) == 0)
				osh.sh_flags |= SHF_WRITE;
			if (sec_flags & SF_CODE)
				osh.sh_flags |= SHF_EXECINSTR;
			if ((sec_flags & SF_CONTENTS) &&
			    s->type == SHT_NOBITS && s->sz > 0) {
				/*
				 * Convert SHT_NOBITS section to section with
				 * (zero'ed) content on file.
				 */
				osh.sh_type = s->type = SHT_PROGBITS;
				if ((s->buf = FUNC1(1, s->sz)) == NULL)
					FUNC3(EXIT_FAILURE, "malloc failed");
				s->nocopy = 1;
			}
		} else {
			osh.sh_flags = ish.sh_flags;
			/*
			 * Newer binutils as(1) emits the section flag
			 * SHF_INFO_LINK for relocation sections. elfcopy
			 * emits this flag in the output section if it's
			 * missing in the input section, to remain compatible
			 * with binutils.
			 */
			if (ish.sh_type == SHT_REL || ish.sh_type == SHT_RELA)
				osh.sh_flags |= SHF_INFO_LINK;
		}
	}

	if (name == NULL)
		FUNC0(ecp, s->name);
	else
		FUNC0(ecp, name);

	if (!FUNC6(s->os, &osh))
		FUNC4(EXIT_FAILURE, "elf_update_shdr failed: %s",
		    FUNC2(-1));
}