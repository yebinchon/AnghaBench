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
struct objfile {int /*<<< orphan*/  obfd; } ;
struct find_targ_sec_arg {TYPE_1__** resultp; int /*<<< orphan*/  targ_index; } ;
struct coff_symbol {int /*<<< orphan*/  c_secnum; } ;
struct TYPE_3__ {int index; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int FUNC0 (struct objfile*) ; 
 int FUNC1 (struct objfile*) ; 
 int SEC_CODE ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  abfd ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct find_targ_sec_arg*) ; 
 int /*<<< orphan*/  find_targ_sec ; 

__attribute__((used)) static int
FUNC4 (struct coff_symbol *cs, struct objfile *objfile)
{
  asection *sect = NULL;
  struct find_targ_sec_arg args;
  int off = FUNC1 (objfile);

  args.targ_index = cs->c_secnum;
  args.resultp = &sect;
  FUNC3 (objfile->obfd, find_targ_sec, &args);
  if (sect != NULL)
    {
      /* This is the section.  Figure out what SECT_OFF_* code it is.  */
      if (FUNC2 (abfd, sect) & SEC_CODE)
	off = FUNC1 (objfile);
      else if (FUNC2 (abfd, sect) & SEC_LOAD)
	off = FUNC0 (objfile);
      else
	/* Just return the bfd section index. */
	off = sect->index;
    }
  return off;
}