#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* rtx ;
typedef  enum attr_itanium_class { ____Placeholder_attr_itanium_class } attr_itanium_class ;
struct TYPE_17__ {int call; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int ITANIUM_CLASS_FLD ; 
 int ITANIUM_CLASS_FLDP ; 
 scalar_t__ ITANIUM_CLASS_IALU ; 
 int ITANIUM_CLASS_LD ; 
 int ITANIUM_CLASS_ST ; 
 int ITANIUM_CLASS_STF ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ REG_DEP_TRUE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  reload_completed ; 

__attribute__((used)) static void
FUNC8 (rtx head, rtx tail)
{
  rtx insn, link, next, next_tail;

  /* Before reload, which_alternative is not set, which means that
     ia64_safe_itanium_class will produce wrong results for (at least)
     move instructions.  */
  if (!reload_completed)
    return;

  next_tail = FUNC2 (tail);
  for (insn = head; insn != next_tail; insn = FUNC2 (insn))
    if (FUNC1 (insn))
      insn->call = 0;
  for (insn = head; insn != next_tail; insn = FUNC2 (insn))
    if (FUNC1 (insn)
	&& FUNC6 (insn) == ITANIUM_CLASS_IALU)
      {
	for (link = FUNC0 (insn); link != 0; link = FUNC4 (link, 1))
	  {
	    enum attr_itanium_class c;

	    if (FUNC3 (link) != REG_DEP_TRUE)
	      continue;
	    next = FUNC4 (link, 0);
	    c = FUNC6 (next);
	    if ((c == ITANIUM_CLASS_ST
		 || c == ITANIUM_CLASS_STF)
		&& FUNC7 (insn, next))
	      break;
	    else if ((c == ITANIUM_CLASS_LD
		      || c == ITANIUM_CLASS_FLD
		      || c == ITANIUM_CLASS_FLDP)
		     && FUNC5 (insn, next))
	      break;
	  }
	insn->call = link != 0;
      }
}