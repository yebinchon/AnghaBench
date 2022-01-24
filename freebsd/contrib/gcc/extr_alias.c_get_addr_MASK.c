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
struct elt_loc_list {int /*<<< orphan*/  loc; struct elt_loc_list* next; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {struct elt_loc_list* locs; } ;
typedef  TYPE_1__ cselib_val ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VALUE ; 

rtx
FUNC5 (rtx x)
{
  cselib_val *v;
  struct elt_loc_list *l;

  if (FUNC2 (x) != VALUE)
    return x;
  v = FUNC1 (x);
  if (v)
    {
      for (l = v->locs; l; l = l->next)
	if (FUNC0 (l->loc))
	  return l->loc;
      for (l = v->locs; l; l = l->next)
	if (!FUNC4 (l->loc) && !FUNC3 (l->loc))
	  return l->loc;
      if (v->locs)
	return v->locs->loc;
    }
  return x;
}