#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct partial_symtab {TYPE_1__* objfile; int /*<<< orphan*/  filename; scalar_t__ number_of_dependencies; scalar_t__ readin; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/ * obfd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct partial_symtab*) ; 
 int /*<<< orphan*/  dbx_next_symbol_text ; 
 int /*<<< orphan*/  FUNC2 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ info_verbose ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  next_symbol_text_func ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ stabs_data ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10 (struct partial_symtab *pst)
{
  bfd *sym_bfd;
  struct cleanup *back_to = NULL;

  if (!pst)
    return;

  if (pst->readin)
    {
      FUNC4 (gdb_stderr, "Psymtab for %s already read in.  Shouldn't happen.\n",
			  pst->filename);
      return;
    }

  if (FUNC1 (pst) || pst->number_of_dependencies)
    {
      /* Print the message now, before reading the string table,
         to avoid disconcerting pauses.  */
      if (info_verbose)
	{
	  FUNC7 ("Reading in symbols for %s...", pst->filename);
	  FUNC5 (gdb_stdout);
	}

      sym_bfd = pst->objfile->obfd;

      next_symbol_text_func = dbx_next_symbol_text;

      if (FUNC0 (pst->objfile))
	{
	  stabs_data
	    = FUNC9 (pst->objfile->obfd,
					      FUNC0 (pst->objfile),
					      NULL);
	  if (stabs_data)
	    back_to = FUNC6 (free_current_contents, (void *) &stabs_data);
	}

      FUNC2 (pst);

      if (back_to)
	FUNC3 (back_to);

      /* Match with global symbols.  This only needs to be done once,
         after all of the symtabs and dependencies have been read in.   */
      FUNC8 (pst->objfile);

      /* Finish up the debug error message.  */
      if (info_verbose)
	FUNC7 ("done.\n");
    }
}