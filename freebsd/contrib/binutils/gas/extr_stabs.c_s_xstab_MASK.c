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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

void
FUNC12 (int what)
{
  int length;
  char *stab_secname, *stabstr_secname;
  static char *saved_secname, *saved_strsecname;

  /* @@ MEMORY LEAK: This allocates a copy of the string, but in most
     cases it will be the same string, so we could release the storage
     back to the obstack it came from.  */
  stab_secname = FUNC3 (&length);
  FUNC0 ();
  if (*input_line_pointer == ',')
    input_line_pointer++;
  else
    {
      FUNC2 (FUNC1("comma missing in .xstabs"));
      FUNC5 ();
      return;
    }

  /* To get the name of the stab string section, simply add "str" to
     the stab section name.  */
  if (saved_secname == 0 || FUNC8 (saved_secname, stab_secname))
    {
      stabstr_secname = (char *) FUNC11 (FUNC10 (stab_secname) + 4);
      FUNC9 (stabstr_secname, stab_secname);
      FUNC7 (stabstr_secname, "str");
      if (saved_secname)
	{
	  FUNC4 (saved_secname);
	  FUNC4 (saved_strsecname);
	}
      saved_secname = stab_secname;
      saved_strsecname = stabstr_secname;
    }
  FUNC6 (what, saved_secname, saved_strsecname);
}