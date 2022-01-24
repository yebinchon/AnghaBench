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
struct df {scalar_t__* problems_by_index; } ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct df*,int /*<<< orphan*/ ) ; 
 size_t DF_LR ; 
 int /*<<< orphan*/  FUNC1 (struct df*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct df*,int /*<<< orphan*/ ) ; 
 size_t DF_UR ; 
 size_t DF_UREC ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

bitmap
FUNC4 (struct df *df, basic_block bb)
{
  FUNC3 (df->problems_by_index[DF_LR]);

  if (df->problems_by_index[DF_UREC])
    return FUNC1 (df, bb);
  else if (df->problems_by_index[DF_UR])
    return FUNC0 (df, bb);
  else 
    return FUNC2 (df, bb);
}