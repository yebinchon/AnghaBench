#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct elt_loc_list {int /*<<< orphan*/  loc; struct elt_loc_list* next; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_8__ {int /*<<< orphan*/  val_rtx; } ;
struct TYPE_9__ {struct TYPE_9__* next_containing_mem; TYPE_1__ u; struct elt_loc_list* locs; int /*<<< orphan*/  addr_list; } ;
typedef  TYPE_2__ cselib_val ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* first_containing_mem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct elt_loc_list* FUNC4 (struct elt_loc_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (cselib_val *addr_elt, cselib_val *mem_elt, rtx x)
{
  struct elt_loc_list *l;

  /* Avoid duplicates.  */
  for (l = mem_elt->locs; l; l = l->next)
    if (FUNC1 (l->loc)
	&& FUNC0 (FUNC2 (l->loc, 0)) == addr_elt)
      return;

  addr_elt->addr_list = FUNC3 (addr_elt->addr_list, mem_elt);
  mem_elt->locs
    = FUNC4 (mem_elt->locs,
			FUNC5 (x, addr_elt->u.val_rtx));
  if (mem_elt->next_containing_mem == NULL)
    {
      mem_elt->next_containing_mem = first_containing_mem;
      first_containing_mem = mem_elt;
    }
}