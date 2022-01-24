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
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {struct symtab* symtab; int /*<<< orphan*/  pc; int /*<<< orphan*/  section; int /*<<< orphan*/  line; } ;
struct symtab {int dummy; } ;

/* Variables and functions */
 struct symtabs_and_lines FUNC0 (char**,int,struct symtab*,int /*<<< orphan*/ ,char***,int*) ; 
 int /*<<< orphan*/  default_breakpoint_address ; 
 int /*<<< orphan*/  default_breakpoint_line ; 
 struct symtab* default_breakpoint_symtab ; 
 scalar_t__ default_breakpoint_valid ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct symtab_and_line FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct symtab_and_line*) ; 
 scalar_t__ FUNC5 (char) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char** FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11 (char **address,
		       struct symtabs_and_lines *sals,
		       char ***addr_string,
		       int *not_found_ptr)
{
  char *addr_start = *address;
  *addr_string = NULL;
  /* If no arg given, or if first arg is 'if ', use the default
     breakpoint. */
  if ((*address) == NULL
      || (FUNC8 ((*address), "if", 2) == 0 && FUNC5 ((*address)[2])))
    {
      if (default_breakpoint_valid)
	{
	  struct symtab_and_line sal;
	  FUNC4 (&sal);		/* initialize to zeroes */
	  sals->sals = (struct symtab_and_line *)
	    FUNC10 (sizeof (struct symtab_and_line));
	  sal.pc = default_breakpoint_address;
	  sal.line = default_breakpoint_line;
	  sal.symtab = default_breakpoint_symtab;
	  sal.section = FUNC2 (sal.pc);
	  sals->sals[0] = sal;
	  sals->nelts = 1;
	}
      else
	FUNC1 ("No default breakpoint address now.");
    }
  else
    {
      /* Force almost all breakpoints to be in terms of the
         current_source_symtab (which is decode_line_1's default).  This
         should produce the results we want almost all of the time while
         leaving default_breakpoint_* alone.  
         ObjC: However, don't match an Objective-C method name which
         may have a '+' or '-' succeeded by a '[' */
	 
      struct symtab_and_line cursal = FUNC3 ();
			
      if (default_breakpoint_valid
	  && (!cursal.symtab
 	      || ((FUNC7 ("+-", (*address)[0]) != NULL)
 		  && ((*address)[1] != '['))))
	*sals = FUNC0 (address, 1, default_breakpoint_symtab,
			       default_breakpoint_line, addr_string, 
			       not_found_ptr);
      else
	*sals = FUNC0 (address, 1, (struct symtab *) NULL, 0,
		               addr_string, not_found_ptr);
    }
  /* For any SAL that didn't have a canonical string, fill one in. */
  if (sals->nelts > 0 && *addr_string == NULL)
    *addr_string = FUNC9 (sals->nelts, sizeof (char **));
  if (addr_start != (*address))
    {
      int i;
      for (i = 0; i < sals->nelts; i++)
	{
	  /* Add the string if not present. */
	  if ((*addr_string)[i] == NULL)
	    (*addr_string)[i] = FUNC6 (addr_start, (*address) - addr_start);
	}
    }
}