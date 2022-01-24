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
typedef  int /*<<< orphan*/  tree ;
struct loop {scalar_t__ header; } ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 scalar_t__ CALL_EXPR ; 
 scalar_t__ MOVE_IMPOSSIBLE ; 
 scalar_t__ SSA_NAME ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,scalar_t__) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (struct loop *loop, basic_block bb, tree m_expr)
{
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC3 (dump_file, "-------------------------\n");
      FUNC5 (dump_file, m_expr, TDF_SLIM);
    }

  /* Be conservative and do not handle immovable expressions.  */
  if (FUNC4 (m_expr) == MOVE_IMPOSSIBLE)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC3 (dump_file, "stmt is movable. Don't take risk\n");
      return false;
    }

  /* See if it needs speculative loading or not.  */
  if (bb != loop->header
      && FUNC6 (FUNC1 (m_expr, 1)))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC3 (dump_file, "tree could trap...\n");
      return false;
    }

  if (FUNC0 (FUNC1 (m_expr, 1)) == CALL_EXPR)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC3 (dump_file, "CALL_EXPR \n");
      return false;
    }

  if (FUNC0 (FUNC1 (m_expr, 0)) != SSA_NAME
      && bb != loop->header
      && !FUNC2 (loop, bb))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC3 (dump_file, "LHS is not var\n");
	  FUNC5 (dump_file, m_expr, TDF_SLIM);
	}
      return false;
    }


  return true;
}