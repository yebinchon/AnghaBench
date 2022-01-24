#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ X_op; unsigned long X_add_number; int X_unsigned; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int BITS_PER_CHAR ; 
 scalar_t__ O_absent ; 
 scalar_t__ O_constant ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int code_label ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* input_line_pointer ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10 (int nbytes)
{
  int c;
  expressionS exp;

#ifdef md_flush_pending_output
    md_flush_pending_output ();
#endif

  if (FUNC7 ())
    {
      FUNC4 ();
      return;
    }

#ifdef TC_ADDRESS_BYTES
  if (nbytes == 0)
    nbytes = TC_ADDRESS_BYTES ();
#endif

#ifdef md_cons_align
  md_cons_align (nbytes);
#endif

  c = 0;
  do
    {
      unsigned int bits_available = BITS_PER_CHAR * nbytes;
      char *hold = input_line_pointer;

      FUNC6 (&exp);

      if (*input_line_pointer == ':')
	{
	  /* Bitfields.  */
	  long value = 0;

	  for (;;)
	    {
	      unsigned long width;

	      if (*input_line_pointer != ':')
		{
		  input_line_pointer = hold;
		  break;
		}
	      if (exp.X_op == O_absent)
		{
		  FUNC3 (FUNC1("using a bit field width of zero"));
		  exp.X_add_number = 0;
		  exp.X_op = O_constant;
		}

	      if (exp.X_op != O_constant)
		{
		  *input_line_pointer = '\0';
		  FUNC2 (FUNC1("field width \"%s\" too complex for a bitfield"), hold);
		  *input_line_pointer = ':';
		  FUNC4 ();
		  return;
		}

	      if ((width = exp.X_add_number) >
		  (unsigned int)(BITS_PER_CHAR * nbytes))
		{
		  FUNC3 (FUNC1("field width %lu too big to fit in %d bytes: truncated to %d bits"), width, nbytes, (BITS_PER_CHAR * nbytes));
		  width = BITS_PER_CHAR * nbytes;
		}                   /* Too big.  */


	      if (width > bits_available)
		{
		  /* FIXME-SOMEDAY: backing up and reparsing is wasteful.  */
		  input_line_pointer = hold;
		  exp.X_add_number = value;
		  break;
		}

	      /* Skip ':'.  */
	      hold = ++input_line_pointer;

	      FUNC6 (&exp);
	      if (exp.X_op != O_constant)
		{
		  char cache = *input_line_pointer;

		  *input_line_pointer = '\0';
		  FUNC2 (FUNC1("field value \"%s\" too complex for a bitfield"), hold);
		  *input_line_pointer = cache;
		  FUNC4 ();
		  return;
		}

	      value |= ((~(-1 << width) & exp.X_add_number)
			<< ((BITS_PER_CHAR * nbytes) - bits_available));

	      if ((bits_available -= width) == 0
		  || FUNC7 ()
		  || *input_line_pointer != ',')
		break;

	      hold = ++input_line_pointer;
	      FUNC6 (&exp);
	    }

	  exp.X_add_number = value;
	  exp.X_op = O_constant;
	  exp.X_unsigned = 1;
	}

      if ((*(input_line_pointer) == '@') && (*(input_line_pointer +1) == 'c'))
	code_label = 1;
      FUNC5 (&exp, (unsigned int) nbytes);
      ++c;
      if ((*(input_line_pointer) == '@') && (*(input_line_pointer +1) == 'c'))
	{
	  input_line_pointer +=3;
	  break;
	}
    }
  while (*input_line_pointer++ == ',');

  /* Put terminator back into stream.  */
  input_line_pointer--;

  FUNC4 ();
}