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
struct file {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct file* FUNC3 (struct file*,int) ; 
 struct file* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(int *fd, int flags)
{
	struct file *fw, *fr;
	int error;
	int fdw, fdr;

	if (flags & ~(O_CLOEXEC | O_NONBLOCK))
		return -EINVAL;

	fw = FUNC4(flags);
	if (FUNC0(fw))
		return FUNC1(fw);
	fr = FUNC3(fw, flags);
	error = FUNC1(fr);
	if (FUNC0(fr))
		goto err_write_pipe;

	error = FUNC7(flags);
	if (error < 0)
		goto err_read_pipe;
	fdr = error;

	error = FUNC7(flags);
	if (error < 0)
		goto err_fdr;
	fdw = error;

	FUNC2(fdr, fdw);
	FUNC5(fdr, fr);
	FUNC5(fdw, fw);
	fd[0] = fdr;
	fd[1] = fdw;

	return 0;

 err_fdr:
	FUNC10(fdr);
 err_read_pipe:
	FUNC8(&fr->f_path);
	FUNC9(fr);
 err_write_pipe:
	FUNC6(fw);
	return error;
}