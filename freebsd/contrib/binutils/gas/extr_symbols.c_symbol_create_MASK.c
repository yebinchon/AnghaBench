#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valueT ;
struct TYPE_10__ {int /*<<< orphan*/ * sy_frag; int /*<<< orphan*/ * bsym; } ;
typedef  TYPE_1__ symbolS ;
typedef  int /*<<< orphan*/  segT ;
typedef  int /*<<< orphan*/  fragS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  notes ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (char const*) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

symbolS *
FUNC13 (const char *name, /* It is copied, the caller can destroy/modify.  */
	       segT segment,	/* Segment identifier (SEG_<something>).  */
	       valueT valu,	/* Symbol value.  */
	       fragS *frag	/* Associated fragment.  */)
{
  char *preserved_copy_of_name;
  symbolS *symbolP;

  preserved_copy_of_name = FUNC10 (name);

  symbolP = (symbolS *) FUNC9 (&notes, sizeof (symbolS));

  /* symbol must be born in some fixed state.  This seems as good as any.  */
  FUNC7 (symbolP, 0, sizeof (symbolS));

  symbolP->bsym = FUNC6 (stdoutput);
  if (symbolP->bsym == NULL)
    FUNC3 ("bfd_make_empty_symbol: %s", FUNC4 (FUNC5 ()));
  FUNC0 (symbolP, preserved_copy_of_name);

  FUNC1 (symbolP, segment);
  FUNC2 (symbolP, valu);
  FUNC11 (symbolP);

  symbolP->sy_frag = frag;

  FUNC8 (symbolP);

#ifdef tc_symbol_new_hook
  tc_symbol_new_hook (symbolP);
#endif

  return symbolP;
}