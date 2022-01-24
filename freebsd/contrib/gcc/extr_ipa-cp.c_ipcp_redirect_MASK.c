#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ipa_jump_func {int dummy; } ;
struct cgraph_node {int dummy; } ;
struct cgraph_edge {struct cgraph_node* callee; struct cgraph_node* caller; } ;
typedef  enum jump_func_type { ____Placeholder_jump_func_type } jump_func_type ;
typedef  enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;

/* Variables and functions */
 int CONST_IPATYPE ; 
 int CONST_IPATYPE_REF ; 
 int FUNC0 (struct ipa_jump_func*) ; 
 struct ipa_jump_func* FUNC1 (struct cgraph_edge*,int) ; 
 int FUNC2 (struct cgraph_node*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cgraph_node*,int) ; 
 struct cgraph_node* FUNC5 (struct cgraph_node*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bool
FUNC7 (struct cgraph_edge *cs)
{
  struct cgraph_node *caller, *callee, *orig_callee;
  int i, count;
  struct ipa_jump_func *jump_func;
  enum jump_func_type type;
  enum cvalue_type cval_type;

  caller = cs->caller;
  callee = cs->callee;
  orig_callee = FUNC5 (callee);
  count = FUNC2 (orig_callee);
  for (i = 0; i < count; i++)
    {
      cval_type =
	FUNC3 (FUNC4 (orig_callee, i));
      if (FUNC6 (cval_type))
	{
	  jump_func = FUNC1 (cs, i);
	  type = FUNC0 (jump_func);
	  if (type != CONST_IPATYPE 
	      && type != CONST_IPATYPE_REF)
	    return true;
	}
    }

  return false;
}