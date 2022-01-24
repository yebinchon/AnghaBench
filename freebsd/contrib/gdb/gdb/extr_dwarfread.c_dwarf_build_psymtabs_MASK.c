#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct objfile {int /*<<< orphan*/  section_offsets; TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; int /*<<< orphan*/ * obfd; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  base_section_offsets ; 
 int /*<<< orphan*/  baseaddr ; 
 unsigned int FUNC1 (scalar_t__,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct objfile* current_objfile ; 
 scalar_t__ dbbase ; 
 scalar_t__ dbroff ; 
 unsigned int dbsize ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct objfile*,int) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/  (*) (scalar_t__),scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct objfile*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (unsigned int) ; 

void
FUNC11 (struct objfile *objfile, int mainline, file_ptr dbfoff,
		      unsigned int dbfsize, file_ptr lnoffset,
		      unsigned int lnsize)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;

  current_objfile = objfile;
  dbsize = dbfsize;
  dbbase = FUNC10 (dbsize);
  dbroff = 0;
  if ((FUNC3 (abfd, dbfoff, SEEK_SET) != 0) ||
      (FUNC1 (dbbase, dbsize, abfd) != dbsize))
    {
      FUNC9 (dbbase);
      FUNC5 ("can't read DWARF data from '%s'", FUNC2 (abfd));
    }
  back_to = FUNC7 (xfree, dbbase);

  /* If we are reinitializing, or if we have never loaded syms yet, init.
     Since we have no idea how many DIES we are looking at, we just guess
     some arbitrary value. */

  if (mainline
      || (objfile->global_psymbols.size == 0
	  && objfile->static_psymbols.size == 0))
    {
      FUNC6 (objfile, 1024);
    }

  /* Save the relocation factor where everybody can see it.  */

  base_section_offsets = objfile->section_offsets;
  baseaddr = FUNC0 (objfile->section_offsets, 0);

  /* Follow the compilation unit sibling chain, building a partial symbol
     table entry for each one.  Save enough information about each compilation
     unit to locate the full DWARF information later. */

  FUNC8 (dbbase, dbbase + dbsize, dbfoff, lnoffset, objfile);

  FUNC4 (back_to);
  current_objfile = NULL;
}