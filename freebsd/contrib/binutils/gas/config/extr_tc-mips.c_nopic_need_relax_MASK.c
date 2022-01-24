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
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_2__ {scalar_t__ ecoff_extern_size; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ g_switch_value ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10 (symbolS *sym, int before_relaxing)
{
  if (sym == 0)
    return 0;

  if (g_switch_value > 0)
    {
      const char *symname;
      int change;

      /* Find out whether this symbol can be referenced off the $gp
	 register.  It can be if it is smaller than the -G size or if
	 it is in the .sdata or .sbss section.  Certain symbols can
	 not be referenced off the $gp, although it appears as though
	 they can.  */
      symname = FUNC0 (sym);
      if (symname != (const char *) NULL
	  && (FUNC7 (symname, "eprol") == 0
	      || FUNC7 (symname, "etext") == 0
	      || FUNC7 (symname, "_gp") == 0
	      || FUNC7 (symname, "edata") == 0
	      || FUNC7 (symname, "_fbss") == 0
	      || FUNC7 (symname, "_fdata") == 0
	      || FUNC7 (symname, "_ftext") == 0
	      || FUNC7 (symname, "end") == 0
	      || FUNC7 (symname, "_gp_disp") == 0))
	change = 1;
      else if ((! FUNC4 (sym) || FUNC3 (sym))
	       && (0
#ifndef NO_ECOFF_DEBUGGING
		   || (FUNC9 (sym)->ecoff_extern_size != 0
		       && (FUNC9 (sym)->ecoff_extern_size
			   <= g_switch_value))
#endif
		   /* We must defer this decision until after the whole
		      file has been read, since there might be a .extern
		      after the first use of this symbol.  */
		   || (before_relaxing
#ifndef NO_ECOFF_DEBUGGING
		       && FUNC9 (sym)->ecoff_extern_size == 0
#endif
		       && FUNC2 (sym) == 0)
		   || (FUNC2 (sym) != 0
		       && FUNC2 (sym) <= g_switch_value)))
	change = 0;
      else
	{
	  const char *segname;

	  segname = FUNC6 (FUNC1 (sym));
	  FUNC5 (FUNC7 (segname, ".lit8") != 0
		  && FUNC7 (segname, ".lit4") != 0);
	  change = (FUNC7 (segname, ".sdata") != 0
		    && FUNC7 (segname, ".sbss") != 0
		    && FUNC8 (segname, ".sdata.", 7) != 0
		    && FUNC8 (segname, ".sbss.", 6) != 0
		    && FUNC8 (segname, ".gnu.linkonce.sb.", 17) != 0
		    && FUNC8 (segname, ".gnu.linkonce.s.", 16) != 0);
	}
      return change;
    }
  else
    /* We are not optimizing for the $gp register.  */
    return 1;
}