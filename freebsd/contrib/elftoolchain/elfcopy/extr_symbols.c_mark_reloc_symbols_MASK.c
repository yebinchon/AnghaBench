#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct elfcopy {int /*<<< orphan*/ * v_rel; TYPE_1__* symtab; int /*<<< orphan*/  ein; } ;
struct TYPE_20__ {int d_size; } ;
struct TYPE_19__ {int /*<<< orphan*/  r_info; } ;
struct TYPE_18__ {int /*<<< orphan*/  r_info; } ;
struct TYPE_17__ {scalar_t__ sh_type; scalar_t__ sh_link; size_t sh_size; int sh_entsize; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_name; } ;
struct TYPE_16__ {int /*<<< orphan*/  is; } ;
typedef  TYPE_2__ GElf_Shdr ;
typedef  TYPE_3__ GElf_Rela ;
typedef  TYPE_4__ GElf_Rel ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_5__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC12 (TYPE_5__*,int,TYPE_4__*) ; 
 TYPE_3__* FUNC13 (TYPE_5__*,int,TYPE_3__*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC15 (struct elfcopy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct elfcopy*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(struct elfcopy *ecp, size_t sc)
{
	const char	*name;
	Elf_Data	*d;
	Elf_Scn		*s;
	GElf_Rel	 r;
	GElf_Rela	 ra;
	GElf_Shdr	 sh;
	size_t		 n, indx;
	int		 elferr, i, len;

	ecp->v_rel = FUNC2((sc + 7) / 8, 1);
	if (ecp->v_rel == NULL)
		FUNC10(EXIT_FAILURE, "calloc failed");

	if (FUNC6(ecp->ein, &indx) == 0)
		FUNC11(EXIT_FAILURE, "elf_getshstrndx failed: %s",
		    FUNC3(-1));

	s = NULL;
	while ((s = FUNC8(ecp->ein, s)) != NULL) {
		if (FUNC14(s, &sh) != &sh)
			FUNC11(EXIT_FAILURE, "elf_getshdr failed: %s",
			    FUNC3(-1));

		if (sh.sh_type != SHT_REL && sh.sh_type != SHT_RELA)
			continue;

		/*
		 * Skip if this reloc section won't appear in the
		 * output object.
		 */
		if ((name = FUNC9(ecp->ein, indx, sh.sh_name)) == NULL)
			FUNC11(EXIT_FAILURE, "elf_strptr failed: %s",
			    FUNC3(-1));
		if (FUNC16(ecp, name) ||
		    FUNC15(ecp, sh.sh_info))
			continue;

		/* Skip if it's not for .symtab */
		if (sh.sh_link != FUNC7(ecp->symtab->is))
			continue;

		d = NULL;
		n = 0;
		while (n < sh.sh_size && (d = FUNC5(s, d)) != NULL) {
			len = d->d_size / sh.sh_entsize;
			for (i = 0; i < len; i++) {
				if (sh.sh_type == SHT_REL) {
					if (FUNC12(d, i, &r) != &r)
						FUNC11(EXIT_FAILURE,
						    "elf_getrel failed: %s",
						     FUNC3(-1));
					n = FUNC1(r.r_info);
				} else {
					if (FUNC13(d, i, &ra) != &ra)
						FUNC11(EXIT_FAILURE,
						    "elf_getrela failed: %s",
						     FUNC3(-1));
					n = FUNC1(ra.r_info);
				}
				if (n > 0 && n < sc)
					FUNC0(ecp->v_rel, n);
				else if (n != 0)
					FUNC17("invalid symbox index");
			}
		}
		elferr = FUNC4();
		if (elferr != 0)
			FUNC11(EXIT_FAILURE, "elf_getdata failed: %s",
			    FUNC3(elferr));
	}
	elferr = FUNC4();
	if (elferr != 0)
		FUNC11(EXIT_FAILURE, "elf_nextscn failed: %s",
		    FUNC3(elferr));
}