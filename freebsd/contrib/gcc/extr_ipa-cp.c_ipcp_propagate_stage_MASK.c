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
typedef  union parameter_info {int dummy; } parameter_info ;
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;
struct ipcp_formal {TYPE_1__ member_1; int /*<<< orphan*/  member_0; } ;
struct ipa_jump_func {int dummy; } ;
struct cgraph_node {struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_edge* next_callee; } ;
typedef  int /*<<< orphan*/  ipa_methodlist_p ;
typedef  enum jump_func_type { ____Placeholder_jump_func_type } jump_func_type ;

/* Variables and functions */
 int FUNC0 (struct ipa_jump_func*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cgraph_node*) ; 
 struct cgraph_node* FUNC2 (struct cgraph_edge*) ; 
 struct ipa_jump_func* FUNC3 (struct cgraph_edge*,int) ; 
 int FUNC4 (struct cgraph_edge*) ; 
 union parameter_info* FUNC5 (struct ipa_jump_func*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct cgraph_node* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ipcp_formal*,struct ipcp_formal*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipcp_formal*,struct cgraph_node*,int,union parameter_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipcp_formal*,struct ipcp_formal*,struct ipcp_formal*) ; 
 struct ipcp_formal* FUNC12 (struct cgraph_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cgraph_node*,int,struct ipcp_formal*) ; 

__attribute__((used)) static void
FUNC14 (void)
{
  int i;
  struct ipcp_formal cval1 = { 0, 0 }, cval = { 0,0 };
  struct ipcp_formal *cval2;
  struct cgraph_node *mt, *callee;
  struct cgraph_edge *cs;
  struct ipa_jump_func *jump_func;
  enum jump_func_type type;
  union parameter_info *info_type;
  ipa_methodlist_p wl;
  int count;

  /* Initialize worklist to contain all methods.  */
  wl = FUNC6 ();
  while (FUNC7 (wl))
    {
      mt = FUNC8 (&wl);
      for (cs = mt->callees; cs; cs = cs->next_callee)
	{
	  callee = FUNC2 (cs);
	  count = FUNC4 (cs);
	  for (i = 0; i < count; i++)
	    {
	      jump_func = FUNC3 (cs, i);
	      type = FUNC0 (jump_func);
	      info_type = FUNC5 (jump_func);
	      FUNC10 (&cval1, mt, type, info_type);
	      cval2 = FUNC12 (callee, i);
	      FUNC11 (&cval, &cval1, cval2);
	      if (FUNC9 (&cval, cval2))
		{
		  FUNC13 (callee, i, &cval);
		  FUNC1 (&wl, callee);
		}
	    }
	}
    }
}