#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ entry_point; scalar_t__ deprecated_entry_file_lowpc; void* deprecated_entry_file_highpc; } ;
struct objfile {TYPE_1__ ei; int /*<<< orphan*/  section_offsets; int /*<<< orphan*/ * obfd; } ;
struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_6__ {int /*<<< orphan*/  (* read_debug_info ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {TYPE_2__ debug_swap; } ;
struct TYPE_7__ {int /*<<< orphan*/  debug_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 scalar_t__ INVALID_ENTRY_LOWPC ; 
 scalar_t__ INVALID_ENTRY_POINT ; 
 void* FUNC1 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct objfile*) ; 
 struct minimal_symbol* FUNC10 (scalar_t__) ; 
 struct cleanup* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct objfile*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct objfile*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15 (struct objfile *objfile, int mainline)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;

  FUNC8 ();
  back_to = FUNC11 ();

  /* Now that the executable file is positioned at symbol table,
     process it and define symbols accordingly.  */

  if (!((*FUNC5 (abfd)->debug_swap.read_debug_info)
	(abfd, (asection *) NULL, &FUNC6 (abfd)->debug_info)))
    FUNC7 ("Error reading symbol table: %s", FUNC2 (FUNC3 ()));

  FUNC12 (objfile, &FUNC5 (abfd)->debug_swap,
			 &FUNC6 (abfd)->debug_info);

  /* Add alpha coff dynamic symbols.  */

  FUNC13 (objfile->section_offsets, objfile);

  /* Install any minimal symbols that have been collected as the current
     minimal symbols for this objfile. */

  FUNC9 (objfile);

  /* If the entry_file bounds are still unknown after processing the
     partial symbols, then try to set them from the minimal symbols
     surrounding the entry_point.  */

  if (mainline
      && objfile->ei.entry_point != INVALID_ENTRY_POINT
      && objfile->ei.deprecated_entry_file_lowpc == INVALID_ENTRY_LOWPC)
    {
      struct minimal_symbol *m;

      m = FUNC10 (objfile->ei.entry_point);
      if (m && FUNC0 (m + 1))
	{
	  objfile->ei.deprecated_entry_file_lowpc = FUNC1 (m);
	  objfile->ei.deprecated_entry_file_highpc = FUNC1 (m + 1);
	}
    }

  FUNC4 (back_to);
}