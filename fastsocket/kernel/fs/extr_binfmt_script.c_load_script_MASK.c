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
struct pt_regs {int dummy; } ;
struct linux_binprm {char* buf; char* interp; struct file* file; int /*<<< orphan*/  argc; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int BINPRM_BUF_SIZE ; 
 int ENOEXEC ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (char*,struct linux_binprm*) ; 
 int FUNC4 (int,char**,struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 struct file* FUNC6 (char*) ; 
 int FUNC7 (struct linux_binprm*) ; 
 int FUNC8 (struct linux_binprm*) ; 
 int FUNC9 (struct linux_binprm*,struct pt_regs*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(struct linux_binprm *bprm,struct pt_regs *regs)
{
	char *cp, *i_name, *i_arg;
	struct file *file;
	char interp[BINPRM_BUF_SIZE];
	int retval;

	if ((bprm->buf[0] != '#') || (bprm->buf[1] != '!'))
		return -ENOEXEC;
	/*
	 * This section does the #! interpretation.
	 * Sorta complicated, but hopefully it will work.  -TYT
	 */

	FUNC2(bprm->file);
	FUNC5(bprm->file);
	bprm->file = NULL;

	bprm->buf[BINPRM_BUF_SIZE - 1] = '\0';
	if ((cp = FUNC10(bprm->buf, '\n')) == NULL)
		cp = bprm->buf+BINPRM_BUF_SIZE-1;
	*cp = '\0';
	while (cp > bprm->buf) {
		cp--;
		if ((*cp == ' ') || (*cp == '\t'))
			*cp = '\0';
		else
			break;
	}
	for (cp = bprm->buf+2; (*cp == ' ') || (*cp == '\t'); cp++);
	if (*cp == '\0') 
		return -ENOEXEC; /* No interpreter name found */
	i_name = cp;
	i_arg = NULL;
	for ( ; *cp && (*cp != ' ') && (*cp != '\t'); cp++)
		/* nothing */ ;
	while ((*cp == ' ') || (*cp == '\t'))
		*cp++ = '\0';
	if (*cp)
		i_arg = cp;
	FUNC11 (interp, i_name);
	/*
	 * OK, we've parsed out the interpreter name and
	 * (optional) argument.
	 * Splice in (1) the interpreter's name for argv[0]
	 *           (2) (optional) argument to interpreter
	 *           (3) filename of shell script (replace argv[0])
	 *
	 * This is done in reverse order, because of how the
	 * user environment and arguments are stored.
	 */
	retval = FUNC8(bprm);
	if (retval)
		return retval;
	retval = FUNC4(1, &bprm->interp, bprm);
	if (retval < 0) return retval; 
	bprm->argc++;
	if (i_arg) {
		retval = FUNC4(1, &i_arg, bprm);
		if (retval < 0) return retval; 
		bprm->argc++;
	}
	retval = FUNC4(1, &i_name, bprm);
	if (retval) return retval; 
	bprm->argc++;
	retval = FUNC3(interp, bprm);
	if (retval < 0)
		return retval;

	/*
	 * OK, now restart the process with the interpreter's dentry.
	 */
	file = FUNC6(interp);
	if (FUNC0(file))
		return FUNC1(file);

	bprm->file = file;
	retval = FUNC7(bprm);
	if (retval < 0)
		return retval;
	return FUNC9(bprm,regs);
}