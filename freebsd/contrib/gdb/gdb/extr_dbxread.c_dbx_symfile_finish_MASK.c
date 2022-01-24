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
struct objfile {int /*<<< orphan*/ * sym_stab_info; int /*<<< orphan*/  md; } ;
struct header_file {struct header_file* vector; struct header_file* name; } ;

/* Variables and functions */
 struct header_file* FUNC0 (struct objfile*) ; 
 int FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct header_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (struct objfile *objfile)
{
  if (objfile->sym_stab_info != NULL)
    {
      if (FUNC0 (objfile) != NULL)
	{
	  int i = FUNC1 (objfile);
	  struct header_file *hfiles = FUNC0 (objfile);

	  while (--i >= 0)
	    {
	      FUNC3 (hfiles[i].name);
	      FUNC3 (hfiles[i].vector);
	    }
	  FUNC3 (hfiles);
	}
      FUNC4 (objfile->md, objfile->sym_stab_info);
    }
  FUNC2 ();
}