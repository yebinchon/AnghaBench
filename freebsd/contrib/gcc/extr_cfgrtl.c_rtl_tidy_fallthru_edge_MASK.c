#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_8__ {struct TYPE_8__* next_bb; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; TYPE_2__* src; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC14 (edge e)
{
  rtx q;
  basic_block b = e->src, c = b->next_bb;

  /* ??? In a late-running flow pass, other folks may have deleted basic
     blocks by nopping out blocks, leaving multiple BARRIERs between here
     and the target label. They ought to be chastised and fixed.

     We can also wind up with a sequence of undeletable labels between
     one block and the next.

     So search through a sequence of barriers, labels, and notes for
     the head of block C and assert that we really do fall through.  */

  for (q = FUNC4 (FUNC0 (b)); q != FUNC1 (c); q = FUNC4 (q))
    if (FUNC2 (q))
      return;

  /* Remove what will soon cease being the jump insn from the source block.
     If block B consisted only of this single jump, turn it into a deleted
     note.  */
  q = FUNC0 (b);
  if (FUNC3 (q)
      && FUNC12 (q)
      && (FUNC9 (q)
	  || FUNC13 (b)))
    {
#ifdef HAVE_cc0
      /* If this was a conditional jump, we need to also delete
	 the insn that set cc0.  */
      if (any_condjump_p (q) && only_sets_cc0_p (PREV_INSN (q)))
	q = PREV_INSN (q);
#endif

      q = FUNC7 (q);

      /* We don't want a block to end on a line-number note since that has
	 the potential of changing the code between -g and not -g.  */
      while (FUNC6 (q) && FUNC5 (q) >= 0)
	q = FUNC7 (q);
    }

  /* Selectively unlink the sequence.  */
  if (q != FUNC7 (FUNC1 (c)))
    FUNC10 (FUNC4 (q), FUNC7 (FUNC1 (c)));

  e->flags |= EDGE_FALLTHRU;
}