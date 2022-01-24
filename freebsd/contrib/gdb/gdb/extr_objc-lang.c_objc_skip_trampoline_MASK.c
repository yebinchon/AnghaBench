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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 

__attribute__((used)) static CORE_ADDR 
FUNC2 (CORE_ADDR stop_pc)
{
  CORE_ADDR real_stop_pc;
  CORE_ADDR method_stop_pc;
  
  real_stop_pc = FUNC0 (stop_pc);

  if (real_stop_pc != 0)
    FUNC1 (real_stop_pc, &method_stop_pc);
  else
    FUNC1 (stop_pc, &method_stop_pc);

  if (method_stop_pc)
    {
      real_stop_pc = FUNC0 (method_stop_pc);
      if (real_stop_pc == 0)
	real_stop_pc = method_stop_pc;
    }

  return real_stop_pc;
}