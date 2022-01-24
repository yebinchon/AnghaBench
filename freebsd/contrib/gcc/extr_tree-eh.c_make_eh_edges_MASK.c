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

/* Variables and functions */
 scalar_t__ RESX_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  make_eh_edge ; 

void
FUNC5 (tree stmt)
{
  int region_nr;
  bool is_resx;

  if (FUNC0 (stmt) == RESX_EXPR)
    {
      region_nr = FUNC1 (FUNC2 (stmt, 0));
      is_resx = true;
    }
  else
    {
      region_nr = FUNC4 (stmt);
      if (region_nr < 0)
	return;
      is_resx = false;
    }

  FUNC3 (region_nr, is_resx, make_eh_edge, stmt);
}