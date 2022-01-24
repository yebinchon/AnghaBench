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
struct objfile {int /*<<< orphan*/  flags; struct dbx_symfile_info* sym_private; int /*<<< orphan*/  md; struct dbx_symfile_info* sym_stab_info; } ;
struct dbx_symfile_info {int dummy; } ;
struct coff_symfile_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJF_REORDERED ; 
 int /*<<< orphan*/  FUNC0 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC1 (struct dbx_symfile_info*,int /*<<< orphan*/ ,int) ; 
 struct dbx_symfile_info* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3 (struct objfile *objfile)
{
  /* Allocate struct to keep track of stab reading. */
  objfile->sym_stab_info = (struct dbx_symfile_info *)
    FUNC2 (objfile->md, sizeof (struct dbx_symfile_info));

  FUNC1 (objfile->sym_stab_info, 0,
	  sizeof (struct dbx_symfile_info));

  /* Allocate struct to keep track of the symfile */
  objfile->sym_private = FUNC2 (objfile->md,
				   sizeof (struct coff_symfile_info));

  FUNC1 (objfile->sym_private, 0, sizeof (struct coff_symfile_info));

  /* COFF objects may be reordered, so set OBJF_REORDERED.  If we
     find this causes a significant slowdown in gdb then we could
     set it in the debug symbol readers only when necessary.  */
  objfile->flags |= OBJF_REORDERED;

  FUNC0 (objfile);
}