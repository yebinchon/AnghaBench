#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tdata_t ;
struct TYPE_24__ {int /*<<< orphan*/  ii_flags; } ;
typedef  TYPE_1__ iidesc_t ;
struct TYPE_25__ {int iim_fuzzy; char* iim_file; char* iim_name; void* iim_bind; } ;
typedef  TYPE_2__ iidesc_match_t ;
struct TYPE_26__ {int iib_nobjts; int iib_nfuncs; int /*<<< orphan*/  iib_maxtypeid; TYPE_1__** iib_funcs; TYPE_1__** iib_objts; } ;
typedef  TYPE_3__ iiburst_t ;
struct TYPE_29__ {scalar_t__ d_buf; } ;
struct TYPE_28__ {int sh_size; int sh_entsize; int sh_link; } ;
struct TYPE_27__ {int st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_4__ GElf_Sym ;
typedef  TYPE_5__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_6__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIDESC_F_USED ; 
#define  STT_FILE 130 
#define  STT_FUNC 129 
#define  STT_OBJECT 128 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,TYPE_6__*,int,TYPE_6__*,TYPE_4__*,char**) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,char*) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,int,TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,char*) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*) ; 

__attribute__((used)) static iiburst_t *
FUNC18(Elf *elf, const char *file, tdata_t *td, int fuzzymatch,
    int dynsym)
{
	iiburst_t *iiburst;
	Elf_Scn *scn;
	GElf_Shdr shdr;
	Elf_Data *data, *strdata;
	int i, stidx;
	int nent;
	iidesc_match_t match;

	match.iim_fuzzy = fuzzymatch;
	match.iim_file = NULL;

	if ((stidx = FUNC9(elf, file,
	    dynsym ? ".dynsym" : ".symtab")) < 0)
		FUNC17("%s: Can't open symbol table\n", file);
	scn = FUNC6(elf, stidx);
	data = FUNC5(scn, NULL);
	FUNC10(scn, &shdr);
	nent = shdr.sh_size / shdr.sh_entsize;

	scn = FUNC6(elf, shdr.sh_link);
	strdata = FUNC5(scn, NULL);

	iiburst = FUNC13(td, nent);

	for (i = 0; i < nent; i++) {
		GElf_Sym sym;
		char *bname;
		iidesc_t **tolist;
		GElf_Sym ssym;
		iidesc_match_t smatch;
		int *curr;
		iidesc_t *iidesc;

		if (FUNC11(data, i, &sym) == NULL)
			FUNC7(file, "Couldn't read symbol %d", i);

		match.iim_name = (char *)strdata->d_buf + sym.st_name;
		match.iim_bind = FUNC0(sym.st_info);

		switch (FUNC1(sym.st_info)) {
		case STT_FILE:
			bname = FUNC15(match.iim_name, '/');
			match.iim_file = bname == NULL ? match.iim_name : bname + 1;
			continue;
		case STT_OBJECT:
			tolist = iiburst->iib_objts;
			curr = &iiburst->iib_nobjts;
			break;
		case STT_FUNC:
			tolist = iiburst->iib_funcs;
			curr = &iiburst->iib_nfuncs;
			break;
		default:
			continue;
		}

		if (FUNC12(&sym, match.iim_name))
			continue;

		iidesc = FUNC8(td, &match);

		if (iidesc != NULL) {
			tolist[*curr] = iidesc;
			iidesc->ii_flags |= IIDESC_F_USED;
			(*curr)++;
			continue;
		}

		if (!FUNC2(&sym, match.iim_file, data, nent, strdata,
		    &ssym, &smatch.iim_file)) {
			(*curr)++;
			continue;
		}

		smatch.iim_fuzzy = fuzzymatch;
		smatch.iim_name = (char *)strdata->d_buf + ssym.st_name;
		smatch.iim_bind = FUNC0(ssym.st_info);

		FUNC4(3, "Weak symbol %s resolved to %s\n", match.iim_name,
		    smatch.iim_name);

		iidesc = FUNC8(td, &smatch);

		if (iidesc != NULL) {
			tolist[*curr] = FUNC3(td, &sym,
			    iidesc, match.iim_name, match.iim_file);
			tolist[*curr]->ii_flags |= IIDESC_F_USED;
		}

		(*curr)++;
	}

	/*
	 * Stabs are generated for every function declared in a given C source
	 * file.  When converting an object file, we may encounter a stab that
	 * has no symbol table entry because the optimizer has decided to omit
	 * that item (for example, an unreferenced static function).  We may
	 * see iidescs that do not have an associated symtab entry, and so
	 * we do not write records for those functions into the CTF data.
	 * All others get marked as a root by this function.
	 */
	FUNC14(iiburst);

	/*
	 * By not adding some of the functions and/or objects, we may have
	 * caused some types that were referenced solely by those
	 * functions/objects to be suppressed.  This could cause a label,
	 * generated prior to the evisceration, to be incorrect.  Find the
	 * highest type index, and change the label indicies to be no higher
	 * than this value.
	 */
	FUNC16(td, iiburst->iib_maxtypeid);

	return (iiburst);
}