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
 char* FUNC0 (char*) ; 

__attribute__((used)) static unsigned
FUNC1 (unsigned insn, int value, const char **errmsg)
{
  if (errmsg != (const char **)NULL && (value & 3))
    *errmsg = FUNC0("branch operand unaligned");
  return insn | ((value / 4) & 0x1FFFFF);
}