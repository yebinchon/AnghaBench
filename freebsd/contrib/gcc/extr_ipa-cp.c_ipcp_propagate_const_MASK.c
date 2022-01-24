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
typedef  union parameter_info {int dummy; } parameter_info ;
typedef  int /*<<< orphan*/  tree ;
struct cgraph_node {int /*<<< orphan*/  decl; } ;
typedef  enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union parameter_info*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_node*,int) ; 

__attribute__((used)) static void
FUNC6 (struct cgraph_node *mt, int param,
		      union parameter_info *cvalue ,enum cvalue_type type)
{
  tree fndecl;
  tree const_val;
  tree parm_tree;

  if (dump_file)
    FUNC4 (dump_file, "propagating const to %s\n", FUNC2 (mt));
  fndecl = mt->decl;
  parm_tree = FUNC5 (mt, param);
  const_val = FUNC1 (cvalue, type, FUNC0 (parm_tree));
  FUNC3 (fndecl, parm_tree, const_val);
}