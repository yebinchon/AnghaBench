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
struct function {int dummy; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ RESX_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct function*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct function*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10 (struct function *src_cfun,
				basic_block bb, int region)
{
  block_stmt_iterator si;

  for (si = FUNC5 (bb); !FUNC3 (si); FUNC4 (&si))
    {
      tree stmt = FUNC6 (si);
      int stmt_region;

      if (FUNC0 (stmt) == RESX_EXPR)
	stmt_region = FUNC1 (FUNC2 (stmt, 0));
      else
	stmt_region = FUNC9 (src_cfun, stmt);
      if (stmt_region > 0)
	{
	  if (region < 0)
	    region = stmt_region;
	  else if (stmt_region != region)
	    {
	      region = FUNC7 (src_cfun, stmt_region, region);
	      FUNC8 (region != -1);
	    }
	}
    }

  return region;
}