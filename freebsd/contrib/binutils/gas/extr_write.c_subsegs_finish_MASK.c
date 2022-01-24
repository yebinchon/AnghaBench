#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct frchain {int /*<<< orphan*/  frch_subseg; struct frchain* frch_next; } ;
struct TYPE_13__ {struct frchain* frchainP; } ;
typedef  TYPE_1__ segment_info_type ;
struct TYPE_14__ {struct TYPE_14__* next; } ;
typedef  TYPE_2__ asection ;
struct TYPE_17__ {int /*<<< orphan*/ * fr_next; scalar_t__ fr_fix; } ;
struct TYPE_16__ {TYPE_2__* sections; } ;
struct TYPE_15__ {unsigned int entsize; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int SEC_MERGE ; 
 int FUNC0 (TYPE_3__*,struct frchain*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_9__* frag_now ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* now_seg ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 TYPE_5__* stdoutput ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 

void
FUNC10 (void)
{
  struct frchain *frchainP;
  asection *s;

  for (s = stdoutput->sections; s; s = s->next)
    {
      segment_info_type *seginfo = FUNC7 (s);
      if (!seginfo)
	continue;

      for (frchainP = seginfo->frchainP;
	   frchainP != NULL;
	   frchainP = frchainP->frch_next)
	{
	  int alignment = 0;

	  FUNC8 (s, frchainP->frch_subseg);

	  /* This now gets called even if we had errors.  In that case,
	     any alignment is meaningless, and, moreover, will look weird
	     if we are generating a listing.  */
	  if (!FUNC5 ())
	    {
	      alignment = FUNC0 (now_seg, frchainP);
	      if ((FUNC1 (now_seg->owner, now_seg) & SEC_MERGE)
		  && now_seg->entsize)
		{
		  unsigned int entsize = now_seg->entsize;
		  int entalign = 0;

		  while ((entsize & 1) == 0)
		    {
		      ++entalign;
		      entsize >>= 1;
		    }
		  if (entalign > alignment)
		    alignment = entalign;
		}
	    }

	  if (FUNC9 (now_seg))
	    FUNC3 (alignment, 0);
	  else
	    FUNC2 (alignment, 0, 0);

	  /* frag_align will have left a new frag.
	     Use this last frag for an empty ".fill".

	     For this segment ...
	     Create a last frag. Do not leave a "being filled in frag".  */
	  FUNC4 (frag_now);
	  frag_now->fr_fix = 0;
	  FUNC6 (frag_now->fr_next == NULL);
	}
    }
}