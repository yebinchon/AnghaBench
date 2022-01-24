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

/* Variables and functions */
 int /*<<< orphan*/  IT_dbt_CODE ; 
 int /*<<< orphan*/  IT_dsy_CODE ; 
 int /*<<< orphan*/  IT_dty_CODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  FUNC3 (1, "SYMBOL INFO");

  while (FUNC2 (IT_dsy_CODE))
    {
      if (FUNC2 (IT_dty_CODE))
	{
	  FUNC1 (IT_dbt_CODE);
	  FUNC0 ();
	  FUNC1 (IT_dty_CODE);
	}
    }

  FUNC3 (-1, "");
}