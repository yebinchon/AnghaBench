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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int MINUS_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  dconstm1 ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree 
FUNC9 (unsigned loop_nb, tree chrec_before, enum tree_code code,
		  tree to_add, tree at_stmt)
{
  tree type = FUNC6 (to_add);
  tree res = NULL_TREE;
  
  if (to_add == NULL_TREE)
    return chrec_before;
  
  /* TO_ADD is either a scalar, or a parameter.  TO_ADD is not
     instantiated at this point.  */
  if (FUNC1 (to_add) == POLYNOMIAL_CHREC)
    /* This should not happen.  */
    return chrec_dont_know;
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC7 (dump_file, "(add_to_evolution \n");
      FUNC7 (dump_file, "  (loop_nb = %d)\n", loop_nb);
      FUNC7 (dump_file, "  (chrec_before = ");
      FUNC8 (dump_file, chrec_before, 0);
      FUNC7 (dump_file, ")\n  (to_add = ");
      FUNC8 (dump_file, to_add, 0);
      FUNC7 (dump_file, ")\n");
    }

  if (code == MINUS_EXPR)
    to_add = FUNC5 (type, to_add, FUNC0 (type)
				  ? FUNC4 (type, dconstm1)
				  : FUNC3 (type, -1));

  res = FUNC2 (loop_nb, chrec_before, to_add, at_stmt);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC7 (dump_file, "  (res = ");
      FUNC8 (dump_file, res, 0);
      FUNC7 (dump_file, "))\n");
    }

  return res;
}