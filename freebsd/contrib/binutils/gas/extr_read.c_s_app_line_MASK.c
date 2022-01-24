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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/ * is_end_of_line ; 
 scalar_t__ listing ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 

void
FUNC10 (int appline)
{
  char *file = NULL;
  int l;

  /* The given number is that of the next line.  */
  if (appline)
    l = FUNC5 ();
  else if (!FUNC6 (&l))
    {
      FUNC7 ();
      return;
    }

  l--;

  if (l < -1)
    /* Some of the back ends can't deal with non-positive line numbers.
       Besides, it's silly.  GCC however will generate a line number of
       zero when it is pre-processing builtins for assembler-with-cpp files:

          # 0 "<built-in>"

       We do not want to barf on this, especially since such files are used
       in the GCC and GDB testsuites.  So we check for negative line numbers
       rather than non-positive line numbers.  */
    FUNC2 (FUNC1("line numbers must be positive; line number %d rejected"),
	     l + 1);
  else
    {
      int flags = 0;
      int length = 0;

      if (!appline)
	{
	  FUNC0 ();

	  if (*input_line_pointer == '"')
	    file = FUNC3 (&length);

	  if (file)
	    {
	      int this_flag;

	      while (FUNC6 (&this_flag))
		switch (this_flag)
		  {
		    /* From GCC's cpp documentation:
		       1: start of a new file.
		       2: returning to a file after having included
		          another file.
		       3: following text comes from a system header file.
		       4: following text should be treated as extern "C".

		       4 is nonsensical for the assembler; 3, we don't
		       care about, so we ignore it just in case a
		       system header file is included while
		       preprocessing assembly.  So 1 and 2 are all we
		       care about, and they are mutually incompatible.
		       new_logical_line_flags() demands this.  */
		  case 1:
		  case 2:
		    if (flags && flags != (1 << this_flag))
		      FUNC2 (FUNC1("incompatible flag %i in line directive"),
			       this_flag);
		    else
		      flags |= 1 << this_flag;
		    break;

		  case 3:
		  case 4:
		    /* We ignore these.  */
		    break;

		  default:
		    FUNC2 (FUNC1("unsupported flag %i in line directive"),
			     this_flag);
		    break;
		  }

	      if (!is_end_of_line[(unsigned char)*input_line_pointer])
		file = 0;
	    }
	}

      if (appline || file)
	{
	  FUNC9 (file, l, flags);
#ifdef LISTING
	  if (listing)
	    listing_source_line (l);
#endif
	}
    }
  if (appline || file)
    FUNC4 ();
  else
    FUNC7 ();
}