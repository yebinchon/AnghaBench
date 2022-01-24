#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mep_hi_fixup {TYPE_2__* fixp; int /*<<< orphan*/  seg; struct mep_hi_fixup* next; } ;
struct TYPE_5__ {TYPE_2__* fix_root; } ;
typedef  TYPE_1__ segment_info_type ;
struct TYPE_6__ {scalar_t__ fx_addsy; scalar_t__ fx_offset; int /*<<< orphan*/  fx_line; int /*<<< orphan*/  fx_file; struct TYPE_6__* fx_next; } ;
typedef  TYPE_2__ fixS ;

/* Variables and functions */
 scalar_t__ BFD_RELOC_HI16 ; 
 scalar_t__ BFD_RELOC_LO16 ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mep_hi_fixup* mep_hi_fixup_list ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 ()
{
  struct mep_hi_fixup * l;

  for (l = mep_hi_fixup_list; l != NULL; l = l->next)
    {
      segment_info_type * seginfo;
      int pass;

      FUNC3 (FUNC0 (l->fixp) == BFD_RELOC_HI16
	      || FUNC0 (l->fixp) == BFD_RELOC_LO16);

      /* Check quickly whether the next fixup happens to be a matching low.  */
      if (l->fixp->fx_next != NULL
	  && FUNC0 (l->fixp->fx_next) == BFD_RELOC_LO16
	  && l->fixp->fx_addsy == l->fixp->fx_next->fx_addsy
	  && l->fixp->fx_offset == l->fixp->fx_next->fx_offset)
	continue;

      /* Look through the fixups for this segment for a matching
         `low'.  When we find one, move the high just in front of it.
         We do this in two passes.  In the first pass, we try to find
         a unique `low'.  In the second pass, we permit multiple
         high's relocs for a single `low'.  */
      seginfo = FUNC4 (l->seg);
      for (pass = 0; pass < 2; pass++)
	{
	  fixS * f;
	  fixS * prev;

	  prev = NULL;
	  for (f = seginfo->fix_root; f != NULL; f = f->fx_next)
	    {
	      /* Check whether this is a `low' fixup which matches l->fixp.  */
	      if (FUNC0 (f) == BFD_RELOC_LO16
		  && f->fx_addsy == l->fixp->fx_addsy
		  && f->fx_offset == l->fixp->fx_offset
		  && (pass == 1
		      || prev == NULL
		      || (FUNC0 (prev) != BFD_RELOC_HI16)
		      || prev->fx_addsy != f->fx_addsy
		      || prev->fx_offset !=  f->fx_offset))
		{
		  fixS ** pf;

		  /* Move l->fixp before f.  */
		  for (pf = &seginfo->fix_root;
		       * pf != l->fixp;
		       pf = & (* pf)->fx_next)
		    FUNC3 (* pf != NULL);

		  * pf = l->fixp->fx_next;

		  l->fixp->fx_next = f;
		  if (prev == NULL)
		    seginfo->fix_root = l->fixp;
		  else
		    prev->fx_next = l->fixp;

		  break;
		}

	      prev = f;
	    }

	  if (f != NULL)
	    break;

	  if (pass == 1)
	    FUNC2 (l->fixp->fx_file, l->fixp->fx_line,
			   FUNC1("Unmatched high relocation"));
	}
    }
}