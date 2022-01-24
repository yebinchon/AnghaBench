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
typedef  int /*<<< orphan*/  pc_val ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  TTRACE_ARG_TYPE ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PC_REGNUM ; 
 int /*<<< orphan*/  U_REGS_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC2 (lwpid_t ttid)
{
  unsigned long pc_val;
  int offset;
  int res;

  offset = FUNC1 (PC_REGNUM, U_REGS_OFFSET);
  res = FUNC0 (
					ttid,
					(TTRACE_ARG_TYPE) offset,
					(char *) &pc_val,
					sizeof (pc_val));
  if (res <= 0)
    {
      return (CORE_ADDR) pc_val;
    }
  else
    {
      return (CORE_ADDR) 0;
    }
}