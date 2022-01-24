#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int coff_line_base ; 
 int /*<<< orphan*/ * current_lineno_sym ; 
 int /*<<< orphan*/ * def_symbol_in_progress ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  frag_now ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void
FUNC8 (int appline)
{
  int l;

  if (! appline && def_symbol_in_progress != NULL)
    {
      FUNC2 (FUNC0(".ln pseudo-op inside .def/.endef: ignored."));
      FUNC3 ();
      return;
    }

  l = FUNC5 ();

  /* If there is no lineno symbol, treat a .ln
     directive as if it were a .appline directive.  */
  if (appline || current_lineno_sym == NULL)
    FUNC7 ((char *) NULL, l - 1);
  else
    FUNC1 (frag_now, FUNC4 (), l);

#ifndef NO_LISTING
  {
    extern int listing;

    if (listing)
      {
	if (! appline)
	  l += coff_line_base - 1;
	FUNC6 (l);
      }
  }
#endif

  FUNC3 ();
}