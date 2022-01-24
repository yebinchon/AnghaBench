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
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int* reg_known_equiv_p ; 
 unsigned int reg_known_value_size ; 

__attribute__((used)) static void
FUNC0 (unsigned int regno, bool val)
{
  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      regno -= FIRST_PSEUDO_REGISTER;
      if (regno < reg_known_value_size)
	reg_known_equiv_p[regno] = val;
    }
}