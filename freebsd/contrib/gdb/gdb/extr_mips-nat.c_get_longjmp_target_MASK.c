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
 int JB_ELEMENT_SIZE ; 
 int JB_PC ; 
 int TARGET_CHAR_BIT ; 
 int TARGET_PTR_BIT ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int) ; 

int
FUNC4 (CORE_ADDR *pc)
{
  CORE_ADDR jb_addr;
  char *buf;

  buf = FUNC0 (TARGET_PTR_BIT / TARGET_CHAR_BIT);
  jb_addr = FUNC2 (A0_REGNUM);

  if (FUNC3 (jb_addr + JB_PC * JB_ELEMENT_SIZE, buf,
			  TARGET_PTR_BIT / TARGET_CHAR_BIT))
    return 0;

  *pc = FUNC1 (buf, TARGET_PTR_BIT / TARGET_CHAR_BIT);

  return 1;
}