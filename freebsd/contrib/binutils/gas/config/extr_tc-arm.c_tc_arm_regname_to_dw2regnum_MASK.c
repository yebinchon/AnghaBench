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
 int FAIL ; 
 int /*<<< orphan*/  REG_TYPE_RN ; 
 int FUNC0 (char**,int /*<<< orphan*/ ) ; 

int
FUNC1 (char *regname)
{
  int reg = FUNC0 (&regname, REG_TYPE_RN);

  if (reg == FAIL)
    return -1;

  return reg;
}