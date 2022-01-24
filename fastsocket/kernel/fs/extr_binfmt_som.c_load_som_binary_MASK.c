#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct som_hdr {unsigned int aux_header_size; int /*<<< orphan*/  aux_header_location; } ;
struct som_exec_auxhdr {unsigned long exec_entry; } ;
struct pt_regs {int dummy; } ;
struct linux_binprm {scalar_t__ p; int /*<<< orphan*/  file; scalar_t__ buf; } ;
struct TYPE_7__ {scalar_t__ brk; scalar_t__ start_stack; scalar_t__ end_data; scalar_t__ start_code; scalar_t__ end_code; scalar_t__ start_brk; } ;
struct TYPE_5__ {int task_size; int map_base; } ;
struct TYPE_6__ {TYPE_3__* mm; TYPE_1__ thread; int /*<<< orphan*/  personality; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXSTACK_DEFAULT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PER_HPUX ; 
 int /*<<< orphan*/  PF_FORKNOEXEC ; 
 unsigned int SOM_PAGESIZE ; 
 int /*<<< orphan*/  STACK_TOP ; 
 int FUNC0 (struct som_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_binprm*) ; 
 TYPE_2__* current ; 
 int FUNC2 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC3 (struct linux_binprm*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct som_exec_auxhdr*) ; 
 struct som_exec_auxhdr* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct som_exec_auxhdr*) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct linux_binprm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct linux_binprm*) ; 
 int /*<<< orphan*/  som_format ; 
 int /*<<< orphan*/  FUNC13 (struct pt_regs*,unsigned long,scalar_t__) ; 

__attribute__((used)) static int
FUNC14(struct linux_binprm * bprm, struct pt_regs * regs)
{
	int retval;
	unsigned int size;
	unsigned long som_entry;
	struct som_hdr *som_ex;
	struct som_exec_auxhdr *hpuxhdr;

	/* Get the exec-header */
	som_ex = (struct som_hdr *) bprm->buf;

	retval = FUNC0(som_ex);
	if (retval != 0)
		goto out;

	/* Now read in the auxiliary header information */

	retval = -ENOMEM;
	size = som_ex->aux_header_size;
	if (size > SOM_PAGESIZE)
		goto out;
	hpuxhdr = FUNC6(size, GFP_KERNEL);
	if (!hpuxhdr)
		goto out;

	retval = FUNC4(bprm->file, som_ex->aux_header_location,
			(char *) hpuxhdr, size);
	if (retval != size) {
		if (retval >= 0)
			retval = -EIO;
		goto out_free;
	}

	/* Flush all traces of the currently running executable */
	retval = FUNC2(bprm);
	if (retval)
		goto out_free;

	/* OK, This is the point of no return */
	current->flags &= ~PF_FORKNOEXEC;
	current->personality = PER_HPUX;
	FUNC12(bprm);

	/* Set the task size for HP-UX processes such that
	 * the gateway page is outside the address space.
	 * This can be fixed later, but for now, this is much
	 * easier.
	 */

	current->thread.task_size = 0xc0000000;

	/* Set map base to allow enough room for hp-ux heap growth */

	current->thread.map_base = 0x80000000;

	retval = FUNC8(bprm->file, hpuxhdr);
	if (retval < 0)
		goto out_free;

	som_entry = hpuxhdr->exec_entry;
	FUNC5(hpuxhdr);

	FUNC10(&som_format);
	FUNC3(bprm);
	FUNC11(bprm, STACK_TOP, EXSTACK_DEFAULT);

	FUNC1(bprm);

	current->mm->start_stack = bprm->p;

#if 0
	printk("(start_brk) %08lx\n" , (unsigned long) current->mm->start_brk);
	printk("(end_code) %08lx\n" , (unsigned long) current->mm->end_code);
	printk("(start_code) %08lx\n" , (unsigned long) current->mm->start_code);
	printk("(end_data) %08lx\n" , (unsigned long) current->mm->end_data);
	printk("(start_stack) %08lx\n" , (unsigned long) current->mm->start_stack);
	printk("(brk) %08lx\n" , (unsigned long) current->mm->brk);
#endif

	FUNC7(current,current->mm);

	FUNC13(regs, som_entry, bprm->p);
	return 0;

	/* error cleanup */
out_free:
	FUNC5(hpuxhdr);
out:
	return retval;
}