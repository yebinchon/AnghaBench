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
typedef  scalar_t__ rtx ;
typedef  enum reg_note { ____Placeholder_reg_note } reg_note ;
typedef  enum DEPS_ADJUST_RESULT { ____Placeholder_DEPS_ADJUST_RESULT } DEPS_ADJUST_RESULT ;
typedef  int /*<<< orphan*/  ds_t ;
struct TYPE_2__ {int flags; } ;
typedef  int HAS_INTERNAL_DEP ;

/* Variables and functions */
 int DO_SPECULATION ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__**) ; 
 TYPE_1__* current_sched_info ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static enum DEPS_ADJUST_RESULT
FUNC3 (rtx insn, rtx elem, enum reg_note dep_type,
				ds_t ds, rtx mem1, rtx mem2,
				rtx **changed_linkpp)
{
  FUNC2 (FUNC0 (insn) && FUNC0 (elem));

  /* Don't depend an insn on itself.  */
  if (insn == elem)
    {
#ifdef INSN_SCHEDULING
      if (current_sched_info->flags & DO_SPECULATION)
        /* INSN has an internal dependence, which we can't overcome.  */
        HAS_INTERNAL_DEP (insn) = 1;
#endif
      return 0;
    }

  return FUNC1 (insn, elem, dep_type,
				   ds, mem1, mem2, changed_linkpp);
}