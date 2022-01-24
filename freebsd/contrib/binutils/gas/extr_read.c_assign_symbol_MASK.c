#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct list_info_struct {int dummy; } ;
typedef  int /*<<< orphan*/  segT ;
struct TYPE_3__ {int /*<<< orphan*/ * fr_symbol; struct list_info_struct* line; } ;
typedef  TYPE_1__ fragS ;
typedef  int /*<<< orphan*/  expressionS ;

/* Variables and functions */
 int LISTING_SYMBOLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int listing ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  need_pass_2 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ reg_section ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC17 (int,int) ; 

__attribute__((used)) static void
FUNC18 (char *name, int mode)
{
  symbolS *symbolP;

  if (name[0] == '.' && name[1] == '\0')
    {
      /* Turn '. = mumble' into a .org mumble.  */
      segT segment;
      expressionS exp;

      segment = FUNC9 (&exp);

      if (!need_pass_2)
	FUNC8 (segment, &exp, 0);

      return;
    }

  if ((symbolP = FUNC14 (name)) == NULL
      && (symbolP = FUNC10 (name)) == NULL)
    {
      symbolP = FUNC15 (name);
#ifndef NO_LISTING
      /* When doing symbol listings, play games with dummy fragments living
	 outside the normal fragment chain to record the file and line info
	 for this symbol.  */
      if (listing & LISTING_SYMBOLS)
	{
	  extern struct list_info_struct *listing_tail;
	  fragS *dummy_frag = (fragS *) FUNC17 (1, sizeof (fragS));
	  dummy_frag->line = listing_tail;
	  dummy_frag->fr_symbol = symbolP;
	  FUNC16 (symbolP, dummy_frag);
	}
#endif
#ifdef OBJ_COFF
      /* "set" symbols are local unless otherwise specified.  */
      SF_SET_LOCAL (symbolP);
#endif
    }

  if (FUNC2 (symbolP) || FUNC13 (symbolP))
    {
      /* Permit register names to be redefined.  */
      if ((mode != 0 || !FUNC3 (symbolP))
	  && FUNC1 (symbolP) != reg_section)
	{
	  FUNC7 (FUNC6("symbol `%s' is already defined"), name);
	  symbolP = FUNC12 (symbolP, 0);
	}
      /* If the symbol is volatile, copy the symbol and replace the
	 original with the copy, so that previous uses of the symbol will
	 retain the value of the symbol at the point of use.  */
      else if (FUNC3 (symbolP))
	symbolP = FUNC12 (symbolP, 1);
    }

  if (mode == 0)
    FUNC5 (symbolP);
  else if (mode < 0)
    FUNC4 (symbolP);

  FUNC11 (symbolP);
}