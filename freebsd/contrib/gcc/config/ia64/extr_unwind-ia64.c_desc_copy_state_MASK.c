#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ unw_word ;
struct TYPE_4__ {int /*<<< orphan*/  next; } ;
struct unw_state_record {TYPE_1__ curr; struct unw_labeled_state* labeled_states; } ;
struct TYPE_5__ {int /*<<< orphan*/  next; } ;
struct unw_labeled_state {scalar_t__ label; TYPE_2__ saved_state; struct unw_labeled_state* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 

__attribute__((used)) static inline void
FUNC4 (unw_word label, struct unw_state_record *sr)
{
  struct unw_labeled_state *ls;

  for (ls = sr->labeled_states; ls; ls = ls->next)
    {
      if (ls->label == label)
        {
	  FUNC2 (&sr->curr);
   	  FUNC3 (&sr->curr, &ls->saved_state, sizeof (sr->curr));
	  sr->curr.next = FUNC1 (ls->saved_state.next);
	  return;
	}
    }
  FUNC0 ();
}