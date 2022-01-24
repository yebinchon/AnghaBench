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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *text, int from_tty)
{
  char *p = text;
  int c;

  if (text)
    while ((c = *p++) != '\0')
      {
	if (c == '\\')
	  {
	    /* \ at end of argument is used after spaces
	       so they won't be lost.  */
	    if (*p == 0)
	      return;

	    c = FUNC1 (&p);
	    if (c >= 0)
	      FUNC2 ("%c", c);
	  }
	else
	  FUNC2 ("%c", c);
      }

  /* Force this output to appear now.  */
  FUNC3 ("");
  FUNC0 (gdb_stdout);
}