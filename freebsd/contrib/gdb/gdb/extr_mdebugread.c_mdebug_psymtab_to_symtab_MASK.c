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
struct partial_symtab {int /*<<< orphan*/  objfile; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  mdebug_next_symbol_text ; 
 int /*<<< orphan*/  next_symbol_text_func ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct partial_symtab*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct partial_symtab *pst)
{

  if (!pst)
    return;

  if (info_verbose)
    {
      FUNC1 ("Reading in symbols for %s...", pst->filename);
      FUNC0 (gdb_stdout);
    }

  next_symbol_text_func = mdebug_next_symbol_text;

  FUNC2 (pst, pst->filename);

  /* Match with global symbols.  This only needs to be done once,
     after all of the symtabs and dependencies have been read in.   */
  FUNC3 (pst->objfile);

  if (info_verbose)
    FUNC1 ("done.\n");
}