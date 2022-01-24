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
 int /*<<< orphan*/  IA64_GR1_REGNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (CORE_ADDR faddr, CORE_ADDR *fdaptr)
{
  CORE_ADDR fdesc;

  fdesc = FUNC1 (faddr);

  if (fdesc == 0)
    {
      CORE_ADDR global_pointer;
      char buf[16];

      fdesc = *fdaptr;
      *fdaptr += 16;

      global_pointer = FUNC0 (faddr);

      if (global_pointer == 0)
	global_pointer = FUNC2 (IA64_GR1_REGNUM);

      FUNC3 (buf, 8, faddr);
      FUNC3 (buf + 8, 8, global_pointer);

      FUNC4 (fdesc, buf, 16);
    }

  return fdesc; 
}