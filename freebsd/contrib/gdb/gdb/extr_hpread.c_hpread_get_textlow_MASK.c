#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long lowaddr; scalar_t__ name; } ;
struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {scalar_t__ kind; } ;
union dnttentry {TYPE_3__ dfunc; TYPE_2__ ddocfunc; TYPE_1__ dblock; } ;
struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ DNTT_TYPE_DOC_FUNCTION ; 
 scalar_t__ DNTT_TYPE_END ; 
 scalar_t__ DNTT_TYPE_FUNCTION ; 
 unsigned long FUNC0 (struct minimal_symbol*) ; 
 scalar_t__ FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 union dnttentry* FUNC3 (int /*<<< orphan*/ ,struct objfile*) ; 
 union dnttentry* FUNC4 (int /*<<< orphan*/ ,struct objfile*) ; 
 struct minimal_symbol* FUNC5 (scalar_t__,int /*<<< orphan*/ *,struct objfile*) ; 

__attribute__((used)) static unsigned long
FUNC6 (int global, int index, struct objfile *objfile,
		    int symcount)
{
  union dnttentry *dn_bufp = NULL;
  struct minimal_symbol *msymbol;

  /* Look for a DNTT_TYPE_FUNCTION symbol.  */
  if (index < symcount)		/* symcount is the number of symbols in */
    {				/*   the dbinfo, LNTT table */
      do
	{
	  if (global)
	    dn_bufp = FUNC3 (index++, objfile);
	  else
	    dn_bufp = FUNC4 (index++, objfile);
	}
      while (dn_bufp->dblock.kind != DNTT_TYPE_FUNCTION
	     && dn_bufp->dblock.kind != DNTT_TYPE_DOC_FUNCTION
	     && dn_bufp->dblock.kind != DNTT_TYPE_END
	     && index < symcount);
    }

  /* NOTE: cagney/2003-03-29: If !(index < symcount), dn_bufp is left
     undefined and that means that the test below is using a garbage
     pointer from the stack.  */
  FUNC2 (dn_bufp != NULL);

  /* Avoid going past a DNTT_TYPE_END when looking for a DNTT_TYPE_FUNCTION.  This
     might happen when a sourcefile has no functions.  */
  if (dn_bufp->dblock.kind == DNTT_TYPE_END)
    return 0;

  /* Avoid going past the end of the LNTT file */
  if (index == symcount)
    return 0;

  /* The minimal symbols are typically more accurate for some reason.  */
  if (dn_bufp->dblock.kind == DNTT_TYPE_FUNCTION)
    msymbol = FUNC5 (dn_bufp->dfunc.name + FUNC1 (objfile), NULL,
				     objfile);
  else				/* must be a DNTT_TYPE_DOC_FUNCTION */
    msymbol = FUNC5 (dn_bufp->ddocfunc.name + FUNC1 (objfile), NULL,
				     objfile);

  if (msymbol)
    return FUNC0 (msymbol);
  else
    return dn_bufp->dfunc.lowaddr;
}