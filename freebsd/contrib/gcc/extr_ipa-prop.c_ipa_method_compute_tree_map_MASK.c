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
typedef  scalar_t__ tree ;
struct cgraph_node {scalar_t__ decl; } ;
struct TYPE_2__ {scalar_t__* ipa_param_tree; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (struct cgraph_node*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cgraph_node*) ; 

void
FUNC4 (struct cgraph_node *mt)
{
  tree fndecl;
  tree fnargs;
  tree parm;
  int param_num;

  FUNC3 (mt);
  fndecl = mt->decl;
  fnargs = FUNC0 (fndecl);
  param_num = 0;
  for (parm = fnargs; parm; parm = FUNC2 (parm))
    {
      FUNC1 (mt)->ipa_param_tree[param_num] = parm;
      param_num++;
    }
}