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
struct elt_loc_list {int /*<<< orphan*/  loc; struct elt_loc_list* next; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int /*<<< orphan*/  val_rtx; } ;
struct TYPE_4__ {struct elt_loc_list* locs; TYPE_1__ u; } ;
typedef  TYPE_2__ cselib_val ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (const void *entry, const void *x_arg)
{
  struct elt_loc_list *l;
  const cselib_val *v = (const cselib_val *) entry;
  rtx x = (rtx) x_arg;
  enum machine_mode mode = FUNC1 (x);

  FUNC3 (FUNC0 (x) != CONST_INT
	      && (mode != VOIDmode || FUNC0 (x) != CONST_DOUBLE));
  
  if (mode != FUNC1 (v->u.val_rtx))
    return 0;

  /* Unwrap X if necessary.  */
  if (FUNC0 (x) == CONST
      && (FUNC0 (FUNC2 (x, 0)) == CONST_INT
	  || FUNC0 (FUNC2 (x, 0)) == CONST_DOUBLE))
    x = FUNC2 (x, 0);

  /* We don't guarantee that distinct rtx's have different hash values,
     so we need to do a comparison.  */
  for (l = v->locs; l; l = l->next)
    if (FUNC4 (l->loc, x))
      return 1;

  return 0;
}