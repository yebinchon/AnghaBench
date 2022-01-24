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
 char* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ flag_m68k_mri ; 
 char* input_line_pointer ; 
 scalar_t__* is_end_of_line ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void
FUNC4 (int appfile)
{
  register char *s;
  int length;

  /* Some assemblers tolerate immediately following '"'.  */
  if ((s = FUNC0 (&length)) != 0)
    {
      int may_omit
	= (!FUNC2 (s, -1, 1) && appfile);

      /* In MRI mode, the preprocessor may have inserted an extraneous
	 backquote.  */
      if (flag_m68k_mri
	  && *input_line_pointer == '\''
	  && is_end_of_line[(unsigned char) input_line_pointer[1]])
	++input_line_pointer;

      FUNC1 ();
      if (!may_omit)
	FUNC3 (s, appfile);
    }
}