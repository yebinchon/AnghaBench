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
struct TYPE_2__ {scalar_t__ live_cond; char* part1; char** args; int validated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ SWITCH_IGNORE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (char const*) ; 
 char* suffix_subst ; 
 TYPE_1__* switches ; 

__attribute__((used)) static void
FUNC3 (int switchnum, int omit_first_word)
{
  if (switches[switchnum].live_cond == SWITCH_IGNORE)
    return;

  if (!omit_first_word)
    {
      FUNC1 ("-", 0, NULL);
      FUNC1 (switches[switchnum].part1, 1, NULL);
    }

  if (switches[switchnum].args != 0)
    {
      const char **p;
      for (p = switches[switchnum].args; *p; p++)
	{
	  const char *arg = *p;

	  FUNC1 (" ", 0, NULL);
	  if (suffix_subst)
	    {
	      unsigned length = FUNC2 (arg);
	      int dot = 0;

	      while (length-- && !FUNC0 (arg[length]))
		if (arg[length] == '.')
		  {
		    ((char *)arg)[length] = 0;
		    dot = 1;
		    break;
		  }
	      FUNC1 (arg, 1, NULL);
	      if (dot)
		((char *)arg)[length] = '.';
	      FUNC1 (suffix_subst, 1, NULL);
	    }
	  else
	    FUNC1 (arg, 1, NULL);
	}
    }

  FUNC1 (" ", 0, NULL);
  switches[switchnum].validated = 1;
}