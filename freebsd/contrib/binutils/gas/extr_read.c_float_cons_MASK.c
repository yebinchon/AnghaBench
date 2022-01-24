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
struct TYPE_3__ {scalar_t__ X_op; int X_add_number; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT ; 
 scalar_t__ O_constant ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* input_line_pointer ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char* FUNC12 (int,char*,int*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  need_pass_2 ; 

void
FUNC15 (/* Clobbers input_line-pointer, checks end-of-line.  */
	    register int float_type	/* 'f':.ffloat ... 'F':.float ...  */)
{
  register char *p;
  int length;			/* Number of chars in an object.  */
  register char *err;		/* Error from scanning floating literal.  */
  char temp[MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT];

  if (FUNC10 ())
    {
      FUNC5 ();
      return;
    }

#ifdef md_flush_pending_output
  md_flush_pending_output ();
#endif

  do
    {
      /* input_line_pointer->1st char of a flonum (we hope!).  */
      FUNC1 ();

      /* Skip any 0{letter} that may be present. Don't even check if the
	 letter is legal. Someone may invent a "z" format and this routine
	 has no use for such information. Lusers beware: you get
	 diagnostics if your input is ill-conditioned.  */
      if (input_line_pointer[0] == '0'
	  && FUNC0 (input_line_pointer[1]))
	input_line_pointer += 2;

      /* Accept :xxxx, where the x's are hex digits, for a floating
	 point with the exact digits specified.  */
      if (input_line_pointer[0] == ':')
	{
	  ++input_line_pointer;
	  length = FUNC8 (float_type, temp);
	  if (length < 0)
	    {
	      FUNC9 ();
	      return;
	    }
	}
      else
	{
	  err = FUNC12 (float_type, temp, &length);
	  FUNC11 (length <= MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT);
	  FUNC11 (length > 0);
	  if (err)
	    {
	      FUNC3 (FUNC2("bad floating literal: %s"), err);
	      FUNC9 ();
	      return;
	    }
	}

      if (!need_pass_2)
	{
	  int count;

	  count = 1;

#ifdef REPEAT_CONS_EXPRESSIONS
	  if (*input_line_pointer == ':')
	    {
	      expressionS count_exp;

	      ++input_line_pointer;
	      expression (&count_exp);

	      if (count_exp.X_op != O_constant
		  || count_exp.X_add_number <= 0)
		as_warn (_("unresolvable or nonpositive repeat count; using 1"));
	      else
		count = count_exp.X_add_number;
	    }
#endif

	  while (--count >= 0)
	    {
	      p = FUNC7 (length);
	      FUNC14 (p, temp, (unsigned int) length);
	    }
	}
      FUNC1 ();
    }
  while (*input_line_pointer++ == ',');

  /* Put terminator back into stream.  */
  --input_line_pointer;
  FUNC5 ();
}