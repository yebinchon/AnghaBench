#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct linux_binprm {char* filename; struct file* file; int /*<<< orphan*/  argc; scalar_t__ buf; } ;
struct file {TYPE_1__* f_op; } ;
struct elfhdr {scalar_t__ e_type; scalar_t__ e_machine; int /*<<< orphan*/  e_ident; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELFMAG ; 
 char* EM86_INTERP ; 
 char* EM86_I_NAME ; 
 scalar_t__ EM_386 ; 
 scalar_t__ EM_486 ; 
 int ENOEXEC ; 
 scalar_t__ ET_DYN ; 
 scalar_t__ ET_EXEC ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  SELFMAG ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (int,char**,struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct file* FUNC6 (char*) ; 
 int FUNC7 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC8 (struct linux_binprm*) ; 
 int FUNC9 (struct linux_binprm*,struct pt_regs*) ; 

__attribute__((used)) static int FUNC10(struct linux_binprm *bprm,struct pt_regs *regs)
{
	char *interp, *i_name, *i_arg;
	struct file * file;
	int retval;
	struct elfhdr	elf_ex;

	/* Make sure this is a Linux/Intel ELF executable... */
	elf_ex = *((struct elfhdr *)bprm->buf);

	if (FUNC5(elf_ex.e_ident, ELFMAG, SELFMAG) != 0)
		return  -ENOEXEC;

	/* First of all, some simple consistency checks */
	if ((elf_ex.e_type != ET_EXEC && elf_ex.e_type != ET_DYN) ||
		(!((elf_ex.e_machine == EM_386) || (elf_ex.e_machine == EM_486))) ||
		(!bprm->file->f_op || !bprm->file->f_op->mmap)) {
			return -ENOEXEC;
	}

	FUNC2(bprm->file);
	FUNC4(bprm->file);
	bprm->file = NULL;

	/* Unlike in the script case, we don't have to do any hairy
	 * parsing to find our interpreter... it's hardcoded!
	 */
	interp = EM86_INTERP;
	i_name = EM86_I_NAME;
	i_arg = NULL;		/* We reserve the right to add an arg later */

	/*
	 * Splice in (1) the interpreter's name for argv[0]
	 *           (2) (optional) argument to interpreter
	 *           (3) filename of emulated file (replace argv[0])
	 *
	 * This is done in reverse order, because of how the
	 * user environment and arguments are stored.
	 */
	FUNC8(bprm);
	retval = FUNC3(1, &bprm->filename, bprm);
	if (retval < 0) return retval; 
	bprm->argc++;
	if (i_arg) {
		retval = FUNC3(1, &i_arg, bprm);
		if (retval < 0) return retval; 
		bprm->argc++;
	}
	retval = FUNC3(1, &i_name, bprm);
	if (retval < 0)	return retval;
	bprm->argc++;

	/*
	 * OK, now restart the process with the interpreter's inode.
	 * Note that we use open_exec() as the name is now in kernel
	 * space, and we don't need to copy it.
	 */
	file = FUNC6(interp);
	if (FUNC0(file))
		return FUNC1(file);

	bprm->file = file;

	retval = FUNC7(bprm);
	if (retval < 0)
		return retval;

	return FUNC9(bprm, regs);
}