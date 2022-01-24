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
struct partial_symtab {int /*<<< orphan*/  filename; scalar_t__ readin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct partial_symtab *pst)
{
  /* FIXME: This is barely more than a stub.  */
  if (pst != NULL)
    {
      if (pst->readin)
	{
	  FUNC3 ("bug: psymtab for %s is already read in.", pst->filename);
	}
      else
	{
	  if (info_verbose)
	    {
	      FUNC1 ("Reading in symbols for %s...", pst->filename);
	      FUNC0 (gdb_stdout);
	    }

	  FUNC2 (pst);

	  /* Finish up the debug error message.  */
	  if (info_verbose)
	    FUNC1 ("done.\n");
	}
    }
}