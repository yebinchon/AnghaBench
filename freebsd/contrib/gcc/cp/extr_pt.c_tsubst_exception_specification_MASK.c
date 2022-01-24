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
typedef  int /*<<< orphan*/  tsubst_flags_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static tree
FUNC5 (tree fntype,
				tree args,
				tsubst_flags_t complain,
				tree in_decl)
{
  tree specs;
  tree new_specs;

  specs = FUNC2 (fntype);
  new_specs = NULL_TREE;
  if (specs)
    {
      if (! FUNC1 (specs))
	new_specs = specs;
      else
	while (specs)
	  {
	    tree spec;
	    spec = FUNC4 (FUNC1 (specs), args, complain, in_decl);
	    if (spec == error_mark_node)
	      return spec;
	    new_specs = FUNC3 (new_specs, spec, complain);
	    specs = FUNC0 (specs);
	  }
    }
  return new_specs;
}