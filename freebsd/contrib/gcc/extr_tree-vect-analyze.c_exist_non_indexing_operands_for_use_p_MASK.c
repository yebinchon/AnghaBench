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
typedef  int /*<<< orphan*/  stmt_vec_info ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC4 (tree use, tree stmt)
{
  tree operand;
  stmt_vec_info stmt_info = FUNC3 (stmt);
 
  /* USE corresponds to some operand in STMT. If there is no data
     reference in STMT, then any operand that corresponds to USE
     is not indexing an array.  */
  if (!FUNC0 (stmt_info))
    return true;
 
  /* STMT has a data_ref. FORNOW this means that its of one of
     the following forms:
     -1- ARRAY_REF = var
     -2- var = ARRAY_REF
     (This should have been verified in analyze_data_refs).

     'var' in the second case corresponds to a def, not a use,
     so USE cannot correspond to any operands that are not used 
     for array indexing.

     Therefore, all we need to check is if STMT falls into the
     first case, and whether var corresponds to USE.  */
 
  if (FUNC1 (FUNC2 (stmt, 0)) == SSA_NAME)
    return false;

  operand = FUNC2 (stmt, 1);

  if (FUNC1 (operand) != SSA_NAME)
    return false;

  if (operand == use)
    return true;

  return false;
}