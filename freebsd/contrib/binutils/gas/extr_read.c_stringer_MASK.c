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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  dwarf_file_string ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int* input_line_pointer ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned int FUNC12 () ; 
 scalar_t__ now_seg ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

void
FUNC15 (/* Worker to do .ascii etc statements.  */
	  /* Checks end-of-line.  */
	  register int append_zero	/* 0: don't append '\0', else 1.  */)
{
  register unsigned int c;
  char *start;

#ifdef md_flush_pending_output
  md_flush_pending_output ();
#endif

  /* The following awkward logic is to parse ZERO or more strings,
     comma separated. Recall a string expression includes spaces
     before the opening '\"' and spaces after the closing '\"'.
     We fake a leading ',' if there is (supposed to be)
     a 1st, expression. We keep demanding expressions for each ','.  */
  if (FUNC8 ())
    {
      c = 0;			/* Skip loop.  */
      ++input_line_pointer;	/* Compensate for end of loop.  */
    }
  else
    {
      c = ',';			/* Do loop.  */
    }
  /* If we have been switched into the abs_section then we
     will not have an obstack onto which we can hang strings.  */
  if (now_seg == absolute_section)
    {
      FUNC3 (FUNC2("strings must be placed into a section"));
      c = 0;
      FUNC6 ();
    }

  while (c == ',' || c == '<' || c == '"')
    {
      FUNC1 ();
      switch (*input_line_pointer)
	{
	case '\"':
	  ++input_line_pointer;	/*->1st char of string.  */
	  start = input_line_pointer;
	  while (FUNC7 (c = FUNC12 ()))
	    {
	      FUNC0 (c);
	    }
	  if (append_zero)
	    {
	      FUNC0 (0);
	    }
	  FUNC9 (input_line_pointer[-1] == '\"');

#ifndef NO_LISTING
#ifdef OBJ_ELF
	  /* In ELF, when gcc is emitting DWARF 1 debugging output, it
	     will emit .string with a filename in the .debug section
	     after a sequence of constants.  See the comment in
	     emit_expr for the sequence.  emit_expr will set
	     dwarf_file_string to non-zero if this string might be a
	     source file name.  */
	  if (strcmp (segment_name (now_seg), ".debug") != 0)
	    dwarf_file_string = 0;
	  else if (dwarf_file_string)
	    {
	      c = input_line_pointer[-1];
	      input_line_pointer[-1] = '\0';
	      listing_source_file (start);
	      input_line_pointer[-1] = c;
	    }
#endif
#endif

	  break;
	case '<':
	  input_line_pointer++;
	  c = FUNC5 ();
	  FUNC0 (c);
	  if (*input_line_pointer != '>')
	    {
	      FUNC3 (FUNC2("expected <nn>"));
	    }
	  input_line_pointer++;
	  break;
	case ',':
	  input_line_pointer++;
	  break;
	}
      FUNC1 ();
      c = *input_line_pointer;
    }

  FUNC4 ();
}