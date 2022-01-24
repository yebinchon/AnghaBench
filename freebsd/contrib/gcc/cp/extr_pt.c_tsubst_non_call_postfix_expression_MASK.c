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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ SCOPE_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static tree
FUNC3 (tree t, tree args,
				    tsubst_flags_t complain,
				    tree in_decl)
{
  if (FUNC0 (t) == SCOPE_REF)
    t = FUNC2 (t, args, complain, in_decl,
			     /*done=*/false, /*address_p=*/false);
  else
    t = FUNC1 (t, args, complain, in_decl,
			       /*function_p=*/false,
			       /*integral_constant_expression_p=*/false);

  return t;
}