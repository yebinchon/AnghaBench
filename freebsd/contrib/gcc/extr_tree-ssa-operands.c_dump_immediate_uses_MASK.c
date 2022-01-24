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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned int num_ssa_names ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

void
FUNC3 (FILE *file)
{
  tree var;
  unsigned int x;

  FUNC1 (file, "Immediate_uses: \n\n");
  for (x = 1; x < num_ssa_names; x++)
    {
      var = FUNC2(x);
      if (!var)
        continue;
      FUNC0 (file, var);
    }
}