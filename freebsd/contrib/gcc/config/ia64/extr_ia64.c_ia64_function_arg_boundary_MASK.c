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
 int FUNC0 (int) ; 
 int PARM_BOUNDARY ; 
 scalar_t__ TARGET_HPUX ; 
 scalar_t__ TARGET_ILP32 ; 
 int TFmode ; 
 int FUNC1 (scalar_t__) ; 

int
FUNC2 (enum machine_mode mode, tree type)
{

  if (mode == TFmode && TARGET_HPUX && TARGET_ILP32)
    return PARM_BOUNDARY * 2;

  if (type)
    {
      if (FUNC1 (type) > PARM_BOUNDARY)
        return PARM_BOUNDARY * 2;
      else
        return PARM_BOUNDARY;
    }

  if (FUNC0 (mode) > PARM_BOUNDARY)
    return PARM_BOUNDARY * 2;
  else
    return PARM_BOUNDARY;
}