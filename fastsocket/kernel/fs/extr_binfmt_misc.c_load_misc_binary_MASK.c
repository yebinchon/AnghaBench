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
struct pt_regs {int dummy; } ;
struct linux_binprm {int interp_data; char* interp; int /*<<< orphan*/  interp_flags; int /*<<< orphan*/  buf; struct file* file; int /*<<< orphan*/  argc; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  interpreter; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int BINPRM_BUF_SIZE ; 
 int /*<<< orphan*/  BINPRM_FLAGS_ENFORCE_NONDUMP ; 
 int /*<<< orphan*/  BINPRM_FLAGS_EXECFD ; 
 int ENOEXEC ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int MISC_FMT_CREDENTIALS ; 
 int MISC_FMT_OPEN_BINARY ; 
 int MISC_FMT_PRESERVE_ARGV0 ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (char*,struct linux_binprm*) ; 
 TYPE_1__* FUNC4 (struct linux_binprm*) ; 
 int FUNC5 (int,char**,struct linux_binprm*) ; 
 int /*<<< orphan*/  enabled ; 
 int /*<<< orphan*/  entries_lock ; 
 int /*<<< orphan*/  FUNC6 (int,struct file*) ; 
 scalar_t__ FUNC7 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int FUNC9 () ; 
 int FUNC10 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct file* FUNC12 (char*) ; 
 int FUNC13 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct linux_binprm*) ; 
 int FUNC17 (struct linux_binprm*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct linux_binprm *bprm, struct pt_regs *regs)
{
	Node *fmt;
	struct file * interp_file = NULL;
	char iname[BINPRM_BUF_SIZE];
	char *iname_addr = iname;
	int retval;
	int fd_binary = -1;

	retval = -ENOEXEC;
	if (!enabled)
		goto _ret;

	/* to keep locking time low, we copy the interpreter string */
	FUNC14(&entries_lock);
	fmt = FUNC4(bprm);
	if (fmt)
		FUNC18(iname, fmt->interpreter, BINPRM_BUF_SIZE);
	FUNC15(&entries_lock);
	if (!fmt)
		goto _ret;

	if (!(fmt->flags & MISC_FMT_PRESERVE_ARGV0)) {
		retval = FUNC16(bprm);
		if (retval)
			goto _ret;
	}

	if (fmt->flags & MISC_FMT_OPEN_BINARY) {

		/* if the binary should be opened on behalf of the
		 * interpreter than keep it open and assign descriptor
		 * to it */
 		fd_binary = FUNC9();
 		if (fd_binary < 0) {
 			retval = fd_binary;
 			goto _ret;
 		}
 		FUNC6(fd_binary, bprm->file);

		/* if the binary is not readable than enforce mm->dumpable=0
		   regardless of the interpreter's permissions */
		if (FUNC7(bprm->file, MAY_READ))
			bprm->interp_flags |= BINPRM_FLAGS_ENFORCE_NONDUMP;

		FUNC2(bprm->file);
		bprm->file = NULL;

		/* mark the bprm that fd should be passed to interp */
		bprm->interp_flags |= BINPRM_FLAGS_EXECFD;
		bprm->interp_data = fd_binary;

 	} else {
 		FUNC2(bprm->file);
 		FUNC8(bprm->file);
 		bprm->file = NULL;
 	}
	/* make argv[1] be the path to the binary */
	retval = FUNC5 (1, &bprm->interp, bprm);
	if (retval < 0)
		goto _error;
	bprm->argc++;

	/* add the interp as argv[0] */
	retval = FUNC5 (1, &iname_addr, bprm);
	if (retval < 0)
		goto _error;
	bprm->argc ++;

	/* Update interp in case binfmt_script needs it. */
	retval = FUNC3(iname, bprm);
	if (retval < 0)
		goto _error;

	interp_file = FUNC12 (iname);
	retval = FUNC1 (interp_file);
	if (FUNC0 (interp_file))
		goto _error;

	bprm->file = interp_file;
	if (fmt->flags & MISC_FMT_CREDENTIALS) {
		/*
		 * No need to call prepare_binprm(), it's already been
		 * done.  bprm->buf is stale, update from interp_file.
		 */
		FUNC11(bprm->buf, 0, BINPRM_BUF_SIZE);
		retval = FUNC10(bprm->file, 0, bprm->buf, BINPRM_BUF_SIZE);
	} else
		retval = FUNC13 (bprm);

	if (retval < 0)
		goto _error;

	retval = FUNC17 (bprm, regs);
	if (retval < 0)
		goto _error;

_ret:
	return retval;
_error:
	if (fd_binary > 0)
		FUNC19(fd_binary);
	bprm->interp_flags = 0;
	bprm->interp_data = 0;
	goto _ret;
}