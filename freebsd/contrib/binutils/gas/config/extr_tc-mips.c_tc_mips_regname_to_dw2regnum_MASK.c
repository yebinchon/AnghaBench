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
 int RTYPE_GP ; 
 int RTYPE_NUM ; 
 scalar_t__ FUNC0 (char**,int,unsigned int*) ; 

int
FUNC1 (char *regname)
{
  unsigned int regnum = -1;
  unsigned int reg;

  if (FUNC0 (&regname, RTYPE_GP | RTYPE_NUM, &reg))
    regnum = reg;

  return regnum;
}