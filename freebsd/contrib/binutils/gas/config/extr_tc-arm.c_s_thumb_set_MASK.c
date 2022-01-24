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
typedef  int /*<<< orphan*/  symbolS ;
struct list_info_struct {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fr_symbol; struct list_info_struct* line; int /*<<< orphan*/  fr_type; } ;
typedef  TYPE_1__ fragS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int LISTING_SYMBOLS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 char* input_line_pointer ; 
 int listing ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ reg_section ; 
 int /*<<< orphan*/  rs_fill ; 
 int /*<<< orphan*/  support_interwork ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/ * FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  undefined_section ; 
 TYPE_1__* FUNC19 (int) ; 
 TYPE_1__ zero_address_frag ; 

__attribute__((used)) static void
FUNC20 (int equiv)
{
  /* XXX the following is a duplicate of the code for s_set() in read.c
     We cannot just call that code as we need to get at the symbol that
     is created.  */
  char *    name;
  char	    delim;
  char *    end_name;
  symbolS * symbolP;

  /* Especial apologies for the random logic:
     This just grew, and could be parsed much more simply!
     Dean - in haste.  */
  name	    = input_line_pointer;
  delim	    = FUNC11 ();
  end_name  = input_line_pointer;
  *end_name = delim;

  if (*input_line_pointer != ',')
    {
      *end_name = 0;
      FUNC9 (FUNC7("expected comma after name \"%s\""), name);
      *end_name = delim;
      FUNC12 ();
      return;
    }

  input_line_pointer++;
  *end_name = 0;

  if (name[0] == '.' && name[1] == '\0')
    {
      /* XXX - this should not happen to .thumb_set.  */
      FUNC8 ();
    }

  if ((symbolP = FUNC16 (name)) == NULL
      && (symbolP = FUNC13 (name)) == NULL)
    {
#ifndef NO_LISTING
      /* When doing symbol listings, play games with dummy fragments living
	 outside the normal fragment chain to record the file and line info
	 for this symbol.  */
      if (listing & LISTING_SYMBOLS)
	{
	  extern struct list_info_struct * listing_tail;
	  fragS * dummy_frag = FUNC19 (sizeof (fragS));

	  FUNC14 (dummy_frag, 0, sizeof (fragS));
	  dummy_frag->fr_type = rs_fill;
	  dummy_frag->line = listing_tail;
	  symbolP = FUNC17 (name, undefined_section, 0, dummy_frag);
	  dummy_frag->fr_symbol = symbolP;
	}
      else
#endif
	symbolP = FUNC17 (name, undefined_section, 0, &zero_address_frag);

#ifdef OBJ_COFF
      /* "set" symbols are local unless otherwise specified.  */
      SF_SET_LOCAL (symbolP);
#endif /* OBJ_COFF  */
    }				/* Make a new symbol.  */

  FUNC18 (symbolP);

  * end_name = delim;

  if (equiv
      && FUNC5 (symbolP)
      && FUNC4 (symbolP) != reg_section)
    FUNC9 (FUNC7("symbol `%s' already defined"), FUNC3 (symbolP));

  FUNC15 (symbolP);

  FUNC10 ();

  /* XXX Now we come to the Thumb specific bit of code.	 */

  FUNC6 (symbolP, 1);
  FUNC1 (symbolP, 1);
#if defined OBJ_ELF || defined OBJ_COFF
  ARM_SET_INTERWORK (symbolP, support_interwork);
#endif
}