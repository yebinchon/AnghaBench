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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 size_t num_ssa_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 scalar_t__* vr_value ; 

void
FUNC4 (FILE *file)
{
  size_t i;

  for (i = 0; i < num_ssa_names; i++)
    {
      if (vr_value[i])
	{
	  FUNC2 (file, FUNC3 (i), 0);
	  FUNC1 (file, ": ");
	  FUNC0 (file, vr_value[i]);
	  FUNC1 (file, "\n");
	}
    }

  FUNC1 (file, "\n");
}