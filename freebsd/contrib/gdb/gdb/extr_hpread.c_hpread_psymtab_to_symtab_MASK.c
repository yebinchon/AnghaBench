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
struct partial_symtab {int /*<<< orphan*/  objfile; int /*<<< orphan*/  filename; scalar_t__ number_of_dependencies; scalar_t__ readin; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC3 (struct partial_symtab*) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ processing_gcc_compilation ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (struct partial_symtab *pst)
{
  /* Get out quick if given junk.  */
  if (!pst)
    return;

  /* Sanity check.  */
  if (pst->readin)
    {
      FUNC1 (gdb_stderr, "Psymtab for %s already read in."
			  "  Shouldn't happen.\n",
			  pst->filename);
      return;
    }

  /* elz: setting the flag to indicate that the code of the target
     was compiled using an HP compiler (aCC, cc) 
     the processing_acc_compilation variable is declared in the 
     file buildsym.h, the HP_COMPILED_TARGET is defined to be equal
     to 3 in the file tm_hppa.h */

  processing_gcc_compilation = 0;

  if (FUNC0 (pst) || pst->number_of_dependencies)
    {
      /* Print the message now, before reading the string table,
         to avoid disconcerting pauses.  */
      if (info_verbose)
	{
	  FUNC4 ("Reading in symbols for %s...", pst->filename);
	  FUNC2 (gdb_stdout);
	}

      FUNC3 (pst);

      /* Match with global symbols.  This only needs to be done once,
         after all of the symtabs and dependencies have been read in.   */
      FUNC5 (pst->objfile);

      /* Finish up the debug error message.  */
      if (info_verbose)
	FUNC4 ("done.\n");
    }
}