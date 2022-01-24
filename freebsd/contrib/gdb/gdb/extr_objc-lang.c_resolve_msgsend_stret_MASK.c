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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR pc, CORE_ADDR *new_pc)
{
  CORE_ADDR object;
  CORE_ADDR sel;
  CORE_ADDR res;

  object = FUNC0 (1);
  sel = FUNC0 (2);

  res = FUNC1 (object, sel);
  if (new_pc != 0)
    *new_pc = res;
  if (res == 0)
    return 1;
  return 0;
}