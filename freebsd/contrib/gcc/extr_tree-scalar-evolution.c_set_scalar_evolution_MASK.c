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
 scalar_t__ SSA_NAME ; 
 int TDF_DETAILS ; 
 int TDF_STATS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  nb_set_scev ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (tree scalar, tree chrec)
{
  tree *scalar_info;
 
  if (FUNC0 (scalar) != SSA_NAME)
    return;

  scalar_info = FUNC1 (scalar);
  
  if (dump_file)
    {
      if (dump_flags & TDF_DETAILS)
	{
	  FUNC2 (dump_file, "(set_scalar_evolution \n");
	  FUNC2 (dump_file, "  (scalar = ");
	  FUNC3 (dump_file, scalar, 0);
	  FUNC2 (dump_file, ")\n  (scalar_evolution = ");
	  FUNC3 (dump_file, chrec, 0);
	  FUNC2 (dump_file, "))\n");
	}
      if (dump_flags & TDF_STATS)
	nb_set_scev++;
    }
  
  *scalar_info = chrec;
}