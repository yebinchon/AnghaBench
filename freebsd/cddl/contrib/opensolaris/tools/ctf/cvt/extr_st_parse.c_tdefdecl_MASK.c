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
struct TYPE_11__ {char* t_name; int t_id; struct TYPE_11__* t_tdesc; int /*<<< orphan*/  t_size; int /*<<< orphan*/  t_type; TYPE_1__* t_fndef; } ;
typedef  TYPE_2__ tdesc_t ;
typedef  int /*<<< orphan*/  fndef_t ;
struct TYPE_10__ {int /*<<< orphan*/  fn_ret; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY ; 
 int /*<<< orphan*/  CONST ; 
 int /*<<< orphan*/  FORWARD ; 
 int /*<<< orphan*/  FUNCTION ; 
 int /*<<< orphan*/  POINTER ; 
 int /*<<< orphan*/  RESTRICT ; 
 int /*<<< orphan*/  STRUCT ; 
 int /*<<< orphan*/  TYPEDEF ; 
 int /*<<< orphan*/  TYPEDEF_UNRES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  UNION ; 
 int /*<<< orphan*/  VOLATILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 char* FUNC3 (char*,TYPE_2__**) ; 
 TYPE_2__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  faketypenumber ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,int*) ; 
 char* FUNC8 (char*,TYPE_2__**) ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char**) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,char*,...) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 void* FUNC17 (int) ; 

__attribute__((used)) static char *
FUNC18(char *cp, int h, tdesc_t **rtdp)
{
	tdesc_t *ntdp;
	char *w;
	int c, h2;
	char type;

	FUNC12(3, cp, "tdefdecl h=%d", h);

	/* Type codes */
	switch (type = *cp) {
	case 'b': /* integer */
	case 'R': /* fp */
		cp = FUNC8(cp, rtdp);
		break;
	case '(': /* equiv to another type */
		cp = FUNC7(cp, &h2);
		ntdp = FUNC9(h2);

		if (ntdp != NULL && *cp == '=') {
			if (ntdp->t_type == FORWARD && *(cp + 1) == 'x') {
				/*
				 * The 6.2 compiler, and possibly others, will
				 * sometimes emit the same stab for a forward
				 * declaration twice.  That is, "(1,2)=xsfoo:"
				 * will sometimes show up in two different
				 * places.  This is, of course, quite fun.  We
				 * want CTF to work in spite of the compiler,
				 * so we'll let this one through.
				 */
				char *c2 = cp + 2;
				char *nm;

				if (!FUNC14("sue", *c2++)) {
					FUNC5("tdefdecl/x-redefine", "[sue]",
					    c2 - 1);
				}

				c2 = FUNC11(c2, &nm);
				if (FUNC15(nm, ntdp->t_name) != 0) {
					FUNC16("Stabs error: Attempt to "
					    "redefine type (%d,%d) as "
					    "something else: %s\n",
					    FUNC0(h2), FUNC1(h2),
					    c2 - 1);
				}
				FUNC6(nm);

				h2 = faketypenumber++;
				ntdp = NULL;
			} else {
				FUNC16("Stabs error: Attempting to "
				    "redefine type (%d,%d)\n", FUNC0(h2),
				    FUNC1(h2));
			}
		}

		if (ntdp == NULL) {  /* if that type isn't defined yet */
			if (*cp != '=') {
				/* record it as unresolved */
				FUNC12(3, NULL, "tdefdecl unres type %d",
				    h2);
				*rtdp = FUNC4(sizeof (**rtdp), 1);
				(*rtdp)->t_type = TYPEDEF_UNRES;
				(*rtdp)->t_id = h2;
				break;
			} else
				cp++;

			/* define a new type */
			cp = FUNC18(cp, h2, rtdp);
			if ((*rtdp)->t_id && (*rtdp)->t_id != h2) {
				ntdp = FUNC4(sizeof (*ntdp), 1);
				ntdp->t_type = TYPEDEF;
				ntdp->t_tdesc = *rtdp;
				*rtdp = ntdp;
			}

			FUNC2(*rtdp, h2);

		} else { /* that type is already defined */
			if (ntdp->t_type != TYPEDEF || ntdp->t_name != NULL) {
				*rtdp = ntdp;
			} else {
				FUNC12(3, NULL,
				    "No duplicate typedef anon for ref");
				*rtdp = ntdp;
			}
		}
		break;
	case '*':
		ntdp = NULL;
		cp = FUNC18(cp + 1, h, &ntdp);
		if (ntdp == NULL)
			FUNC5("tdefdecl/*", "id", cp);

		if (!ntdp->t_id)
			ntdp->t_id = faketypenumber++;

		*rtdp = FUNC17(sizeof (**rtdp));
		(*rtdp)->t_type = POINTER;
		(*rtdp)->t_size = 0;
		(*rtdp)->t_id = h;
		(*rtdp)->t_tdesc = ntdp;
		break;
	case 'f':
		cp = FUNC18(cp + 1, h, &ntdp);
		*rtdp = FUNC17(sizeof (**rtdp));
		(*rtdp)->t_type = FUNCTION;
		(*rtdp)->t_size = 0;
		(*rtdp)->t_id = h;
		(*rtdp)->t_fndef = FUNC17(sizeof (fndef_t));
		/*
		 * The 6.1 compiler will sometimes generate incorrect stabs for
		 * function pointers (it'll get the return type wrong).  This
		 * causes merges to fail.  We therefore treat function pointers
		 * as if they all point to functions that return int.  When
		 * 4432549 is fixed, the lookupname() call below should be
		 * replaced with `ntdp'.
		 */
		(*rtdp)->t_fndef->fn_ret = FUNC10("int");
		break;
	case 'a':
	case 'z':
		cp++;
		if (*cp++ != 'r')
			FUNC5("tdefdecl/[az]", "r", cp - 1);
		*rtdp = FUNC17(sizeof (**rtdp));
		(*rtdp)->t_type = ARRAY;
		(*rtdp)->t_id = h;
		cp = FUNC3(cp, rtdp);
		break;
	case 'x':
		c = *++cp;
		if (c != 's' && c != 'u' && c != 'e')
			FUNC5("tdefdecl/x", "[sue]", cp - 1);
		cp = FUNC11(cp + 1, &w);

		ntdp = FUNC17(sizeof (*ntdp));
		ntdp->t_type = FORWARD;
		ntdp->t_name = w;
		/*
		 * We explicitly don't set t_id here - the caller will do it.
		 * The caller may want to use a real type ID, or they may
		 * choose to make one up.
		 */

		*rtdp = ntdp;
		break;

	case 'B': /* volatile */
		cp = FUNC18(cp + 1, h, &ntdp);

		if (!ntdp->t_id)
			ntdp->t_id = faketypenumber++;

		*rtdp = FUNC17(sizeof (**rtdp));
		(*rtdp)->t_type = VOLATILE;
		(*rtdp)->t_size = 0;
		(*rtdp)->t_tdesc = ntdp;
		(*rtdp)->t_id = h;
		break;

	case 'k': /* const */
		cp = FUNC18(cp + 1, h, &ntdp);

		if (!ntdp->t_id)
			ntdp->t_id = faketypenumber++;

		*rtdp = FUNC17(sizeof (**rtdp));
		(*rtdp)->t_type = CONST;
		(*rtdp)->t_size = 0;
		(*rtdp)->t_tdesc = ntdp;
		(*rtdp)->t_id = h;
		break;

	case 'K': /* restricted */
		cp = FUNC18(cp + 1, h, &ntdp);

		if (!ntdp->t_id)
			ntdp->t_id = faketypenumber++;

		*rtdp = FUNC17(sizeof (**rtdp));
		(*rtdp)->t_type = RESTRICT;
		(*rtdp)->t_size = 0;
		(*rtdp)->t_tdesc = ntdp;
		(*rtdp)->t_id = h;
		break;

	case 'u':
	case 's':
		cp++;

		*rtdp = FUNC17(sizeof (**rtdp));
		(*rtdp)->t_name = NULL;
		cp = FUNC13(cp, (type == 'u') ? UNION : STRUCT, rtdp);
		break;
	default:
		FUNC5("tdefdecl", "<type code>", cp);
	}
	return (cp);
}