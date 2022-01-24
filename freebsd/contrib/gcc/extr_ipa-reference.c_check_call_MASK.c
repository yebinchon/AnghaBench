#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct cgraph_node {int dummy; } ;
typedef  TYPE_1__* ipa_reference_local_vars_info_t ;
typedef  enum availability { ____Placeholder_availability } availability ;
struct TYPE_4__ {int calls_read_all; int calls_write_all; } ;

/* Variables and functions */
 int AVAIL_NOT_AVAILABLE ; 
 int AVAIL_OVERWRITABLE ; 
 int ECF_PURE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct cgraph_node*) ; 
 struct cgraph_node* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8 (ipa_reference_local_vars_info_t local, tree call_expr) 
{
  int flags = FUNC3 (call_expr);
  tree operand_list = FUNC1 (call_expr, 1);
  tree operand;
  tree callee_t = FUNC7 (call_expr);
  enum availability avail = AVAIL_NOT_AVAILABLE;

  for (operand = operand_list;
       operand != NULL_TREE;
       operand = FUNC0 (operand))
    {
      tree argument = FUNC2 (operand);
      FUNC6 (local, argument);
    }

  if (callee_t)
    {
      struct cgraph_node* callee = FUNC5(callee_t);
      avail = FUNC4 (callee);
    }

  if (avail == AVAIL_NOT_AVAILABLE || avail == AVAIL_OVERWRITABLE)
    if (local) 
      {
	if (flags & ECF_PURE) 
	  local->calls_read_all = true;
	else 
	  {
	    local->calls_read_all = true;
	    local->calls_write_all = true;
	  }
      }
}