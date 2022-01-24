#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct struct_equiv_checkpoint {scalar_t__ ninsns; int input_count; } ;
struct TYPE_2__ {scalar_t__ input_count; scalar_t__ ninsns; int /*<<< orphan*/  x_start; } ;
struct equiv_info {int input_cost; int mode; scalar_t__ check_input_conflict; TYPE_1__ cur; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ IMPOSSIBLE_MOVE_FACTOR ; 
 int STRUCT_EQUIV_FINAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cc0_rtx ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct equiv_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct struct_equiv_checkpoint*,struct equiv_info*) ; 

__attribute__((used)) static void
FUNC7 (struct struct_equiv_checkpoint *p,
				 struct equiv_info *info)
{
#ifdef HAVE_cc0
  if (reg_mentioned_p (cc0_rtx, info->cur.x_start)
      && !sets_cc0_p (info->cur.x_start))
    return;
#endif
  if (info->cur.input_count >= IMPOSSIBLE_MOVE_FACTOR)
    return;
  if (info->input_cost >= 0
      ? (FUNC0(info->cur.ninsns - p->ninsns)
	 > info->input_cost * (info->cur.input_count - p->input_count))
      : info->cur.ninsns > p->ninsns && !info->cur.input_count)
    {
      if (info->check_input_conflict && ! FUNC4 (info))
	return;
      /* We have a profitable set of changes.  If this is the final pass,
	 commit them now.  Otherwise, we don't know yet if we can make any
	 change, so put the old code back for now.  */
      if (info->mode & STRUCT_EQUIV_FINAL)
	FUNC2 ();
      else
	FUNC1 (0);
      FUNC6 (p, info);
    }
}