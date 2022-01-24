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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 

__attribute__((used)) static tree
FUNC5 (tree var, bool imag_p)
{
  size_t decl_index = FUNC0 (var) * 2 + imag_p;
  tree ret = FUNC4 (decl_index);

  if (ret == NULL)
    {
      ret = FUNC2 (FUNC1 (FUNC1 (var)), var,
				      imag_p ? "CI" : "CR",
				      imag_p ? "$imag" : "$real",
				      imag_p ? IMAGPART_EXPR : REALPART_EXPR);
      FUNC3 (decl_index, ret);
    }

  return ret;
}