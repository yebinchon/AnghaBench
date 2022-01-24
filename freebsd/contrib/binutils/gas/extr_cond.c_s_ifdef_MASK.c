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
struct conditional_frame {int ignoring; TYPE_1__* previous_cframe; scalar_t__ dead_tree; } ;
typedef  int /*<<< orphan*/  cframe ;
struct TYPE_2__ {int /*<<< orphan*/  ignoring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cond_obstack ; 
 struct conditional_frame* current_cframe ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct conditional_frame*) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct conditional_frame*,int) ; 
 scalar_t__ reg_section ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 

void
FUNC16 (int test_defined)
{
  /* Points to name of symbol.  */
  char *name;
  /* Points to symbol.  */
  symbolS *symbolP;
  struct conditional_frame cframe;
  char c;

  /* Leading whitespace is part of operand.  */
  FUNC1 ();
  name = input_line_pointer;

  if (!FUNC10 (*name))
    {
      FUNC5 (FUNC4("invalid identifier for \".ifdef\""));
      FUNC12 (&cond_obstack, 0);
      FUNC8 ();
      return;
    }

  c = FUNC7 ();
  symbolP = FUNC15 (name);
  *input_line_pointer = c;

  FUNC9 (&cframe);
  
  if (cframe.dead_tree)
    cframe.ignoring = 1;
  else
    {
      int is_defined;

      /* Use the same definition of 'defined' as .equiv so that a symbol
	 which has been referenced but not yet given a value/address is
	 considered to be undefined.  */
      is_defined =
	symbolP != NULL
	&& (FUNC3 (symbolP) || FUNC14 (symbolP))
	&& FUNC2 (symbolP) != reg_section;

      cframe.ignoring = ! (test_defined ^ is_defined);
    }

  current_cframe = ((struct conditional_frame *)
		    FUNC13 (&cond_obstack, &cframe,
				  sizeof (cframe)));

  if (FUNC0 ()
      && cframe.ignoring
      && (cframe.previous_cframe == NULL
	  || ! cframe.previous_cframe->ignoring))
    FUNC11 (2);

  FUNC6 ();
}