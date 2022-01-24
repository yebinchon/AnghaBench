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
struct partial_symtab {int readin; int number_of_dependencies; TYPE_1__* objfile; struct partial_symtab** dependencies; int /*<<< orphan*/  filename; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  obfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct partial_symtab*) ; 
 scalar_t__ FUNC1 (struct partial_symtab*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC3 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cleanup*) ; 
 int /*<<< orphan*/  file_string_table_offset ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ info_verbose ; 
 struct cleanup* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct partial_symtab*) ; 
 int /*<<< orphan*/  really_free_pendings ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  symbol_size ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15 (struct partial_symtab *pst)
{
  struct cleanup *old_chain;
  int i;

  if (!pst)
    return;

  if (pst->readin)
    {
      FUNC7 (gdb_stderr, "Psymtab for %s already read in.  Shouldn't happen.\n",
			  pst->filename);
      return;
    }

  /* Read in all partial symtabs on which this one is dependent */
  for (i = 0; i < pst->number_of_dependencies; i++)
    if (!pst->dependencies[i]->readin)
      {
	/* Inform about additional files that need to be read in.  */
	if (info_verbose)
	  {
	    FUNC8 (" ", gdb_stdout);
	    FUNC14 ("");
	    FUNC8 ("and ", gdb_stdout);
	    FUNC14 ("");
	    FUNC11 ("%s...", pst->dependencies[i]->filename);
	    FUNC14 ("");	/* Flush output */
	    FUNC9 (gdb_stdout);
	  }
	FUNC15 (pst->dependencies[i]);
      }

  if (FUNC1 (pst))		/* Otherwise it's a dummy */
    {
      /* Init stuff necessary for reading in symbols */
      FUNC13 ();
      FUNC5 ();
      old_chain = FUNC10 (really_free_pendings, 0);
      file_string_table_offset = FUNC0 (pst);
      symbol_size = FUNC3 (pst);

      /* Read in this file's symbols */
      FUNC4 (pst->objfile->obfd, FUNC2 (pst), SEEK_SET);
      FUNC12 (pst);

      FUNC6 (old_chain);
    }

  pst->readin = 1;
}