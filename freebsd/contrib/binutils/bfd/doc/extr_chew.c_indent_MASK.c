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
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/ * tos ; 

__attribute__((used)) static void
FUNC5 ()
{
  string_type out;
  int tab = 0;
  int idx = 0;
  int ol = 0;
  FUNC4 (&out);
  while (FUNC0 (tos, idx))
    {
      switch (FUNC0 (tos, idx))
	{
	case '\n':
	  FUNC2 (&out, "\n");
	  idx++;
	  if (tab && FUNC0 (tos, idx))
	    {
	      FUNC2 (&out, "    ");
	    }
	  ol = 0;
	  break;
	case '(':
	  tab++;
	  if (ol == 0)
	    FUNC2 (&out, "   ");
	  idx++;
	  FUNC2 (&out, "(");
	  ol = 1;
	  break;
	case ')':
	  tab--;
	  FUNC2 (&out, ")");
	  idx++;
	  ol = 1;

	  break;
	default:
	  FUNC1 (&out, FUNC0 (tos, idx));
	  ol = 1;

	  idx++;
	  break;
	}
    }

  pc++;
  FUNC3 (tos);
  *tos = out;

}