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
typedef  int arc_insn ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int,int) ; 

int
FUNC4 (arc_insn insn)
{
  return ((insn & (FUNC2(-1)|FUNC0(-1)|FUNC1(-1)|FUNC3(-1,7,1)|FUNC3(-1,9,1)))
	  != (FUNC2(0x7) | FUNC3(-1,9,1)));
}