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
typedef  int /*<<< orphan*/  pretty_printer ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LABEL_EXPR ; 
 int TDF_BLOCKS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12 (pretty_printer *buffer, basic_block bb,
		      int indent, int flags)
{
  block_stmt_iterator bsi;
  tree stmt;
  int label_indent = indent - 2;

  if (label_indent < 0)
    label_indent = 0;

  FUNC7 (buffer, bb, indent, flags);

  FUNC10 (buffer, bb, indent, flags);

  for (bsi = FUNC4 (bb); !FUNC2 (bsi); FUNC3 (&bsi))
    {
      int curr_indent;

      stmt = FUNC5 (bsi);

      curr_indent = FUNC1 (stmt) == LABEL_EXPR ? label_indent : indent;

      FUNC0 (curr_indent);
      FUNC8 (buffer, stmt, curr_indent, flags, true);
      FUNC11 (buffer);
    }

  FUNC9 (buffer, bb, indent, flags);

  if (flags & TDF_BLOCKS)
    FUNC6 (buffer, bb, indent, flags);
}