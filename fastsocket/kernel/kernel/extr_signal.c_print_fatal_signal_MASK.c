#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {scalar_t__ ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 scalar_t__ FUNC0 (unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs, int signr)
{
	FUNC3("%s/%d: potentially unexpected fatal signal %d.\n",
		current->comm, FUNC5(current), signr);

#if defined(__i386__) && !defined(__arch_um__)
	printk("code at %08lx: ", regs->ip);
	{
		int i;
		for (i = 0; i < 16; i++) {
			unsigned char insn;

			if (get_user(insn, (unsigned char *)(regs->ip + i)))
				break;
			printk("%02x ", insn);
		}
	}
#endif
	FUNC3("\n");
	FUNC1();
	FUNC4(regs);
	FUNC2();
}