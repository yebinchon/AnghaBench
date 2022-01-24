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
struct partial_symtab {int readin; int number_of_dependencies; int /*<<< orphan*/  filename; int /*<<< orphan*/  section_offsets; scalar_t__ textlow; scalar_t__ texthigh; int /*<<< orphan*/  objfile; int /*<<< orphan*/  symtab; struct partial_symtab** dependencies; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC1 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ info_verbose ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  really_free_pendings ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (struct partial_symtab *pst)
{
  struct cleanup *old_chain;
  int i;

  /* Get out quick if passed junk.  */
  if (!pst)
    return;

  /* Complain if we've already read in this symbol table.  */
  if (pst->readin)
    {
      FUNC4 (gdb_stderr, "Psymtab for %s already read in."
			  "  Shouldn't happen.\n",
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
	    FUNC5 (" ", gdb_stdout);
	    FUNC10 ("");
	    FUNC5 ("and ", gdb_stdout);
	    FUNC10 ("");
	    FUNC9 ("%s...", pst->dependencies[i]->filename);
	    FUNC10 ("");	/* Flush output */
	    FUNC6 (gdb_stdout);
	  }
	FUNC11 (pst->dependencies[i]);
      }

  /* If it's real...  */
  if (FUNC0 (pst))
    {
      /* Init stuff necessary for reading in symbols */
      FUNC2 ();
      old_chain = FUNC8 (really_free_pendings, 0);

      pst->symtab =
	FUNC7 (pst->objfile, FUNC1 (pst), FUNC0 (pst),
			      pst->textlow, pst->texthigh - pst->textlow,
			      pst->section_offsets, pst->filename);

      FUNC3 (old_chain);
    }

  pst->readin = 1;
}