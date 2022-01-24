#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_2__ {scalar_t__ versioned_name; } ;

/* Variables and functions */
 char ELF_VER_CHR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 char* FUNC4 (scalar_t__,char) ; 
 int FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  symbol_lastP ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * symbol_rootP ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11 (void)
{
  if (symbol_rootP)
    {
      symbolS *symp;

      for (symp = symbol_rootP; symp; symp = FUNC7 (symp))
	if (!FUNC0 (symp))
	  {
	    if (FUNC6 (symp)->versioned_name)
	      {
		char *p;

		/* The @@@ syntax is a special case. If the symbol is
		   not defined, 2 `@'s will be removed from the
		   versioned_name.  */

		p = FUNC4 (FUNC6 (symp)->versioned_name,
			    ELF_VER_CHR);
		FUNC2 (p != NULL);
		if (p[1] == ELF_VER_CHR && p[2] == ELF_VER_CHR)
		  {
		    size_t l = FUNC5 (&p[3]) + 1;
		    FUNC3 (&p[1], &p[3], l);
		  }
		if (FUNC10 (symp) == 0
		    && FUNC9 (symp) == 0)
		  FUNC8 (symp, &symbol_rootP, &symbol_lastP);
	      }

	    /* If there was .weak foo, but foo was neither defined nor
	       used anywhere, remove it.  */

	    else if (FUNC1 (symp)
		     && FUNC10 (symp) == 0
		     && FUNC9 (symp) == 0)
	      FUNC8 (symp, &symbol_rootP, &symbol_lastP);
	  }
    }
}