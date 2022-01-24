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
typedef  int /*<<< orphan*/  string_type ;

/* Variables and functions */
 scalar_t__ NO_PARAMS ; 
 char FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/  tos ; 

__attribute__((used)) static void
FUNC8 ()
{
  unsigned int openp;
  unsigned int fname;
  unsigned int idx;
  unsigned int len;
  string_type out;
  FUNC5 (&out);

#define NO_PARAMS 1

  /* Make sure that it's not already param'd or proto'd.  */
  if (NO_PARAMS
      || FUNC4 (tos, "PARAMS") || FUNC4 (tos, "PROTO") || !FUNC4 (tos, "("))
    {
      FUNC2 (&out, tos);
    }
  else
    {
      /* Find the open paren.  */
      for (openp = 0; FUNC0 (tos, openp) != '(' && FUNC0 (tos, openp); openp++)
	;

      fname = openp;
      /* Step back to the fname.  */
      fname--;
      while (fname && FUNC6 ((unsigned char) FUNC0 (tos, fname)))
	fname--;
      while (fname
	     && !FUNC6 ((unsigned char) FUNC0 (tos,fname))
	     && FUNC0 (tos,fname) != '*')
	fname--;

      fname++;

      /* Output type, omitting trailing whitespace character(s), if
         any.  */
      for (len = fname; 0 < len; len--)
	{
	  if (!FUNC6 ((unsigned char) FUNC0 (tos, len - 1)))
	    break;
	}
      for (idx = 0; idx < len; idx++)
	FUNC1 (&out, FUNC0 (tos, idx));

      FUNC3 (&out, "\n");	/* Insert a newline between type and fnname */

      /* Output function name, omitting trailing whitespace
         character(s), if any.  */
      for (len = openp; 0 < len; len--)
	{
	  if (!FUNC6 ((unsigned char) FUNC0 (tos, len - 1)))
	    break;
	}
      for (idx = fname; idx < len; idx++)
	FUNC1 (&out, FUNC0 (tos, idx));

      FUNC3 (&out, " PARAMS (");

      for (idx = openp; FUNC0 (tos, idx) && FUNC0 (tos, idx) != ';'; idx++)
	FUNC1 (&out, FUNC0 (tos, idx));

      FUNC3 (&out, ");\n\n");
    }
  FUNC7 (tos, &out);
  pc++;

}