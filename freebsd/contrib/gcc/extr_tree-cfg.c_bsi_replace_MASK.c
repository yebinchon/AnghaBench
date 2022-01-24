#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_5__ {int /*<<< orphan*/  bb; } ;
typedef  TYPE_1__ block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__ const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (const block_stmt_iterator *bsi, tree stmt, bool update_eh_info)
{
  int eh_region;
  tree orig_stmt = FUNC3 (*bsi);

  FUNC1 (stmt, FUNC0 (orig_stmt));
  FUNC9 (stmt, bsi->bb);

  /* Preserve EH region information from the original statement, if
     requested by the caller.  */
  if (update_eh_info)
    {
      eh_region = FUNC6 (orig_stmt);
      if (eh_region >= 0)
	{
	  FUNC8 (orig_stmt);
	  FUNC2 (stmt, eh_region);
	}
    }

  FUNC5 (orig_stmt);
  *FUNC4 (*bsi) = stmt;
  FUNC7 (stmt);
  FUNC10 (stmt);
}