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
 int /*<<< orphan*/  A0_REGNUM ; 
 int /*<<< orphan*/  FBSD_MIPS_JB_ELEMENT_SIZE ; 
 scalar_t__ FBSD_MIPS_JB_OFFSET ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (CORE_ADDR *pc)
{
  CORE_ADDR jb_addr;
  char *buf;

  buf = FUNC0 (FBSD_MIPS_JB_ELEMENT_SIZE);

  jb_addr = FUNC2 (A0_REGNUM);

  if (FUNC3 (jb_addr + FBSD_MIPS_JB_OFFSET, buf,
  			  FBSD_MIPS_JB_ELEMENT_SIZE))
    return 0;

  *pc = FUNC1 (buf, FBSD_MIPS_JB_ELEMENT_SIZE);

  return 1;
}