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
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int /*<<< orphan*/  kind; } ;
union dnttentry {TYPE_2__ dsfile; TYPE_1__ dblock; } ;
struct objfile {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct objfile*) ; 
 unsigned int FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 int /*<<< orphan*/  symnum ; 

__attribute__((used)) static void
FUNC4 (union dnttentry *sym, char **namep, struct objfile *objfile)
{
  /* Note that we "know" that the name for any symbol is always in the same
     place.  Hence we don't have to conditionalize on the symbol type.  */
  if (! FUNC3 (sym->dblock.kind))
    *namep = "";
  else if ((unsigned) sym->dsfile.name >= FUNC1 (objfile))
    {
      FUNC2 (&symfile_complaints, "bad string table offset in symbol %d",
		 symnum);
      *namep = "";
    }
  else
    *namep = sym->dsfile.name + FUNC0 (objfile);
}