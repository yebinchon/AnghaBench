#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_24__ {int t_type; int t_size; char* t_name; TYPE_3__* t_members; } ;
typedef  TYPE_2__ tdesc_t ;
struct TYPE_25__ {int ml_offset; int ml_size; struct TYPE_25__* ml_next; int /*<<< orphan*/ * ml_name; int /*<<< orphan*/  ml_type; } ;
typedef  TYPE_3__ mlist_t ;
struct TYPE_26__ {TYPE_2__* ii_dtype; int /*<<< orphan*/  ii_name; int /*<<< orphan*/  ii_type; } ;
typedef  TYPE_4__ iidesc_t ;
struct TYPE_27__ {TYPE_1__* dw_td; int /*<<< orphan*/  dw_fwdhash; } ;
typedef  TYPE_5__ dwarf_t ;
struct TYPE_23__ {int /*<<< orphan*/  td_iihash; } ;
typedef  int Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;

/* Variables and functions */
 int /*<<< orphan*/  DW_ATTR_REQ ; 
 int /*<<< orphan*/  DW_AT_bit_offset ; 
 int /*<<< orphan*/  DW_AT_bit_size ; 
 int /*<<< orphan*/  DW_AT_byte_size ; 
 int /*<<< orphan*/  DW_AT_data_member_location ; 
 int /*<<< orphan*/  DW_AT_type ; 
 scalar_t__ DW_TAG_member ; 
 int FORWARD ; 
 int /*<<< orphan*/  II_SOU ; 
 int NBBY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  die_fwd_map ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,size_t,char*,char const*) ; 
 int FUNC16 (char const*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 char const* FUNC18 (TYPE_2__*) ; 
 void* FUNC19 (int) ; 
 char* FUNC20 (size_t) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static void
FUNC22(dwarf_t *dw, Dwarf_Die str, Dwarf_Off off, tdesc_t *tdp,
    int type, const char *typename)
{
	Dwarf_Unsigned sz, bitsz, bitoff;
#if BYTE_ORDER == _LITTLE_ENDIAN
	Dwarf_Unsigned bysz;
#endif
	Dwarf_Die mem;
	mlist_t *ml, **mlastp;
	iidesc_t *ii;

	tdp->t_type = (FUNC3(dw, str) ? FORWARD : type);

	FUNC0(3, "die %llu: creating %s %s\n", off,
	    (tdp->t_type == FORWARD ? "forward decl" : typename),
	    FUNC18(tdp));

	if (tdp->t_type == FORWARD) {
		FUNC12(dw->dw_fwdhash, tdp);
		return;
	}

	(void) FUNC13(dw->dw_fwdhash, tdp, die_fwd_map, tdp);

	(void) FUNC10(dw, str, DW_AT_byte_size, &sz, DW_ATTR_REQ);
	tdp->t_size = sz;

	/*
	 * GCC allows empty SOUs as an extension.
	 */
	if ((mem = FUNC1(dw, str)) == NULL) {
		goto out;
	}

	mlastp = &tdp->t_members;

	do {
		Dwarf_Off memoff = FUNC7(dw, mem);
		Dwarf_Half tag = FUNC9(dw, mem);
		Dwarf_Unsigned mloff;

		if (tag != DW_TAG_member) {
			/* Nested type declaration */
			FUNC2(dw, mem);
			continue;
		}

		FUNC0(3, "die %llu: mem %llu: creating member\n", off, memoff);

		ml = FUNC19(sizeof (mlist_t));

		/*
		 * This could be a GCC anon struct/union member, so we'll allow
		 * an empty name, even though nothing can really handle them
		 * properly.  Note that some versions of GCC miss out debug
		 * info for anon structs, though recent versions are fixed (gcc
		 * bug 11816).
		 */
		if ((ml->ml_name = FUNC6(dw, mem)) == NULL)
			ml->ml_name = NULL;

		ml->ml_type = FUNC4(dw, mem, DW_AT_type);

		if (FUNC5(dw, mem, DW_AT_data_member_location,
		    &mloff, 0)) {
			FUNC0(3, "die %llu: got mloff %llx\n", off,
			    (u_longlong_t)mloff);
			ml->ml_offset = mloff * 8;
		}

		if (FUNC10(dw, mem, DW_AT_bit_size, &bitsz, 0))
			ml->ml_size = bitsz;
		else
			ml->ml_size = FUNC17(ml->ml_type);

		if (FUNC10(dw, mem, DW_AT_bit_offset, &bitoff, 0)) {
#if BYTE_ORDER == _BIG_ENDIAN
			ml->ml_offset += bitoff;
#else
			/*
			 * Note that Clang 3.4 will sometimes generate
			 * member DIE before generating the DIE for the
			 * member's type. The code can not handle this
			 * properly so that tdesc_bitsize(ml->ml_type) will
			 * return 0 because ml->ml_type is unknown. As a
			 * result, a wrong member offset will be calculated.
			 * To workaround this, we can instead try to
			 * retrieve the value of DW_AT_byte_size attribute
			 * which stores the byte size of the space occupied
			 * by the type. If this attribute exists, its value
			 * should equal to tdesc_bitsize(ml->ml_type)/NBBY.
			 */
			if (die_unsigned(dw, mem, DW_AT_byte_size, &bysz, 0) &&
			    bysz > 0)
				ml->ml_offset += bysz * NBBY - bitoff -
				    ml->ml_size;
			else
				ml->ml_offset += tdesc_bitsize(ml->ml_type) -
				    bitoff - ml->ml_size;
#endif
		}

		FUNC0(3, "die %llu: mem %llu: created \"%s\" (off %u sz %u)\n",
		    off, memoff, ml->ml_name, ml->ml_offset, ml->ml_size);

		*mlastp = ml;
		mlastp = &ml->ml_next;
	} while ((mem = FUNC8(dw, mem)) != NULL);

	/*
	 * GCC will attempt to eliminate unused types, thus decreasing the
	 * size of the emitted dwarf.  That is, if you declare a foo_t in your
	 * header, include said header in your source file, and neglect to
	 * actually use (directly or indirectly) the foo_t in the source file,
	 * the foo_t won't make it into the emitted DWARF.  So, at least, goes
	 * the theory.
	 *
	 * Occasionally, it'll emit the DW_TAG_structure_type for the foo_t,
	 * and then neglect to emit the members.  Strangely, the loner struct
	 * tag will always be followed by a proper nested declaration of
	 * something else.  This is clearly a bug, but we're not going to have
	 * time to get it fixed before this goo goes back, so we'll have to work
	 * around it.  If we see a no-membered struct with a nested declaration
	 * (i.e. die_child of the struct tag won't be null), we'll ignore it.
	 * Being paranoid, we won't simply remove it from the hash.  Instead,
	 * we'll decline to create an iidesc for it, thus ensuring that this
	 * type won't make it into the output file.  To be safe, we'll also
	 * change the name.
	 */
	if (tdp->t_members == NULL) {
		const char *old = FUNC18(tdp);
		size_t newsz = 7 + FUNC16(old) + 1;
		char *new = FUNC20(newsz);
		(void) FUNC15(new, newsz, "orphan %s", old);

		FUNC0(3, "die %llu: worked around %s %s\n", off, typename, old);

		if (tdp->t_name != NULL)
			FUNC11(tdp->t_name);
		tdp->t_name = new;
		return;
	}

out:
	if (tdp->t_name != NULL) {
		ii = FUNC19(sizeof (iidesc_t));
		ii->ii_type = II_SOU;
		ii->ii_name = FUNC21(tdp->t_name);
		ii->ii_dtype = tdp;

		FUNC14(dw->dw_td->td_iihash, ii);
	}
}