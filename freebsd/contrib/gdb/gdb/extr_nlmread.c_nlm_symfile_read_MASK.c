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
struct symbol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  main_func_highpc; int /*<<< orphan*/  main_func_lowpc; } ;
struct objfile {TYPE_1__ ei; int /*<<< orphan*/  section_offsets; int /*<<< orphan*/ * obfd; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LOC_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 
 scalar_t__ FUNC4 (struct symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct objfile*) ; 
 struct symbol* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct cleanup* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct objfile*) ; 
 int /*<<< orphan*/  FUNC12 (struct objfile*,int,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC13 (struct objfile *objfile, int mainline)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;
  CORE_ADDR offset;
  struct symbol *mainsym;

  FUNC6 ();
  back_to = FUNC10 ();

  /* FIXME, should take a section_offsets param, not just an offset.  */

  offset = FUNC0 (objfile->section_offsets, 0);

  /* Process the NLM export records, which become the bfd's canonical symbol
     table. */

  FUNC11 (abfd, offset, objfile);

  /* Install any minimal symbols that have been collected as the current
     minimal symbols for this objfile. */

  FUNC7 (objfile);
  FUNC5 (back_to);

  FUNC12 (objfile, mainline, ".stab",
			   ".stabstr", ".text");

  mainsym = FUNC8 (FUNC9 (), NULL, VAR_DOMAIN, NULL, NULL);

  if (mainsym
      && FUNC4 (mainsym) == LOC_BLOCK)
    {
      objfile->ei.main_func_lowpc = FUNC2 (FUNC3 (mainsym));
      objfile->ei.main_func_highpc = FUNC1 (FUNC3 (mainsym));
    }

  /* FIXME:  We could locate and read the optional native debugging format
     here and add the symbols to the minimal symbol table. */
}