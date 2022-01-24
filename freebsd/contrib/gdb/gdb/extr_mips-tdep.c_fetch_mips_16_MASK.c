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
typedef  int CORE_ADDR ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

__attribute__((used)) static unsigned int
FUNC2 (CORE_ADDR pc)
{
  char buf[8];
  pc &= 0xfffffffe;		/* clear the low order bit */
  FUNC1 (pc, buf, 2);
  return FUNC0 (buf, 2);
}