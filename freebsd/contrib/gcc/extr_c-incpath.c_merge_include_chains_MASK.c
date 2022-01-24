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
struct cpp_dir {char* name; struct cpp_dir* next; } ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_2__ {struct cpp_dir* next; } ;

/* Variables and functions */
 size_t AFTER ; 
 size_t BRACKET ; 
 size_t QUOTE ; 
 size_t SYSTEM ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct cpp_dir** heads ; 
 struct cpp_dir* FUNC2 (int /*<<< orphan*/ *,struct cpp_dir*,struct cpp_dir*,struct cpp_dir*,int) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__** tails ; 

__attribute__((used)) static void
FUNC3 (cpp_reader *pfile, int verbose)
{
  /* Join the SYSTEM and AFTER chains.  Remove duplicates in the
     resulting SYSTEM chain.  */
  if (heads[SYSTEM])
    tails[SYSTEM]->next = heads[AFTER];
  else
    heads[SYSTEM] = heads[AFTER];
  heads[SYSTEM] = FUNC2 (pfile, heads[SYSTEM], 0, 0, verbose);

  /* Remove duplicates from BRACKET that are in itself or SYSTEM, and
     join it to SYSTEM.  */
  heads[BRACKET] = FUNC2 (pfile, heads[BRACKET], heads[SYSTEM],
				      heads[SYSTEM], verbose);

  /* Remove duplicates from QUOTE that are in itself or SYSTEM, and
     join it to BRACKET.  */
  heads[QUOTE] = FUNC2 (pfile, heads[QUOTE], heads[SYSTEM],
				    heads[BRACKET], verbose);

  /* If verbose, print the list of dirs to search.  */
  if (verbose)
    {
      struct cpp_dir *p;

      FUNC1 (stderr, "%s", FUNC0("#include \"...\" search starts here:\n"));
      for (p = heads[QUOTE];; p = p->next)
	{
	  if (p == heads[BRACKET])
	    FUNC1 (stderr, "%s", FUNC0("#include <...> search starts here:\n"));
	  if (!p)
	    break;
	  FUNC1 (stderr, " %s\n", p->name);
	}
      FUNC1 (stderr, "%s", FUNC0("End of search list.\n"));
    }
}