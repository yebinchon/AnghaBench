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
typedef  int /*<<< orphan*/  symbolS ;

/* Variables and functions */
 char* GP_DISP_LABEL ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ USE_GLOBAL_POINTER_OPT ; 
 scalar_t__ g_switch_value ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC8 (symbolS * sym, int before_relaxing)
{
  if (sym == NULL)
    return 0;
  else if (USE_GLOBAL_POINTER_OPT && g_switch_value > 0)
    {
      const char *symname;
      const char *segname;

      /* Find out whether this symbol can be referenced off the $gp
         register.  It can be if it is smaller than the -G size or if
         it is in the .sdata or .sbss section.  Certain symbols can
         not be referenced off the $gp, although it appears as though
         they can.  */
      symname = FUNC0 (sym);
      if (symname != (const char *)NULL
          && (FUNC6 (symname, "eprol") == 0
              || FUNC6 (symname, "etext") == 0
              || FUNC6 (symname, "_gp") == 0
              || FUNC6 (symname, "edata") == 0
              || FUNC6 (symname, "_fbss") == 0
              || FUNC6 (symname, "_fdata") == 0
              || FUNC6 (symname, "_ftext") == 0
              || FUNC6 (symname, "end") == 0
              || FUNC6 (symname, GP_DISP_LABEL) == 0))
        {
          return 1;
        }
      else if ((!FUNC4 (sym) || FUNC3 (sym)) && (0
      /* We must defer this decision until after the whole file has been read,
         since there might be a .extern after the first use of this symbol.  */
               || (before_relaxing
                   && FUNC2 (sym) == 0)
               || (FUNC2 (sym) != 0
                   && FUNC2 (sym) <= g_switch_value)))
        {
          return 0;
        }

      segname = FUNC5 (FUNC1 (sym));
      return (FUNC6 (segname, ".sdata") != 0
	      && FUNC6 (segname, ".sbss") != 0
	      && FUNC7 (segname, ".sdata.", 7) != 0
	      && FUNC7 (segname, ".gnu.linkonce.s.", 16) != 0);
    }
  /* We are not optimizing for the $gp register.  */
  else
    return 1;
}