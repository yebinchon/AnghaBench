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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

CORE_ADDR
FUNC2 (int regno, CORE_ADDR blockend)
{
  CORE_ADDR addr;

  if (regno < 0 || regno >= NUM_REGS)
    FUNC1 ("Invalid register number %d.", regno);

  FUNC0 (addr, blockend, regno);

  return addr;
}