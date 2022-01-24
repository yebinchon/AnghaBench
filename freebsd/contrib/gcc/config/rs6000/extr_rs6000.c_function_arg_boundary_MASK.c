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
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ ABI_V4 ; 
 scalar_t__ FUNC0 (int) ; 
 int BLKmode ; 
 scalar_t__ DEFAULT_ABI ; 
 int FUNC1 (int) ; 
 int PARM_BOUNDARY ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 int TFmode ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ rs6000_darwin64_abi ; 

int
FUNC6 (enum machine_mode mode, tree type)
{
  if (DEFAULT_ABI == ABI_V4
      && (FUNC1 (mode) == 8
	  || (TARGET_HARD_FLOAT
	      && TARGET_FPRS
	      && mode == TFmode)))
    return 64;
  else if (FUNC2 (mode)
	   || (type && FUNC3 (type) == VECTOR_TYPE
	       && FUNC5 (type) >= 8
	       && FUNC5 (type) < 16))
    return 64;
  else if (FUNC0 (mode)
	   || (type && FUNC3 (type) == VECTOR_TYPE
	       && FUNC5 (type) >= 16))
    return 128;
  else if (rs6000_darwin64_abi && mode == BLKmode
	   && type && FUNC4 (type) > 64)
    return 128;
  else
    return PARM_BOUNDARY;
}