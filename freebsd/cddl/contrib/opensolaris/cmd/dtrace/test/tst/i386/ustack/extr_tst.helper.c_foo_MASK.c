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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  instr ;

/* Variables and functions */
 scalar_t__ baz ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int) ; 
 int FUNC3 () ; 

__attribute__((used)) static int
FUNC4(void)
{
	/*
	 * In order to assure that our helper is properly employed to identify
	 * the frame, we're going to trampoline through data.
	 */
	uint8_t instr[] = {
	    0x55,			/* pushl %ebp		*/
	    0x8b, 0xec,			/* movl  %esp, %ebp	*/
	    0xe8, 0x0, 0x0, 0x0, 0x0,	/* call  baz		*/
	    0x8b, 0xe5,			/* movl  %ebp, %esp	*/
	    0x5d,			/* popl  %ebp		*/
	    0xc3			/* ret			*/
	};
	uint8_t *fp = FUNC2(sizeof (instr));

	/*
	 * Do our little relocation dance.
	 */
	*((int *)&instr[4]) = (uintptr_t)baz - (uintptr_t)&fp[8];

	/*
	 * Copy the code to the heap (it's a pain to build in ON with an
	 * executable stack).
	 */
	FUNC0(instr, fp, sizeof (instr));

	(*(int (*)(void))fp)();

	FUNC1(fp);

	return (0);
}