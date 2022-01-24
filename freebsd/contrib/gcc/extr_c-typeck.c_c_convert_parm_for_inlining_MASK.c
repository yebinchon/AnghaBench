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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {scalar_t__ (* promote_prototypes ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ic_argpass_nonproto ; 
 int /*<<< orphan*/  integer_type_node ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

tree
FUNC8 (tree parm, tree value, tree fn, int argnum)
{
  tree ret, type;

  /* If FN was prototyped at the call site, the value has been converted
     already in convert_arguments.
     However, we might see a prototype now that was not in place when
     the function call was seen, so check that the VALUE actually matches
     PARM before taking an early exit.  */
  if (!value
      || (FUNC2 (FUNC1 (fn))
	  && (FUNC3 (FUNC1 (parm))
	      == FUNC3 (FUNC1 (value)))))
    return value;

  type = FUNC1 (parm);
  ret = FUNC5 (type, value,
				ic_argpass_nonproto, fn,
				fn, argnum);
  if (targetm.calls.promote_prototypes (FUNC1 (fn))
      && FUNC0 (type)
      && (FUNC4 (type) < FUNC4 (integer_type_node)))
    ret = FUNC6 (ret);
  return ret;
}