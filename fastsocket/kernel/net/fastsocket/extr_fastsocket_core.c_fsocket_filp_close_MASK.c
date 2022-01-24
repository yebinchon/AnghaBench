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
struct file {struct file* old_file; struct file* sub_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct file*) ; 
 int FUNC1 (struct file*) ; 

__attribute__((used)) static inline int FUNC2(struct file *file)
{
	struct file *sfile, *ofile;
	int retval;

	sfile = file->sub_file;
	ofile = file->old_file;

	FUNC0(DEBUG, "Close file 0x%p\n", file);

	retval = FUNC1(file);

	//FIXME: To close sub file and old file after close file successfully? Or the other way around.

	if (sfile && !retval) {
		FUNC0(DEBUG, "Close sub file 0x%p\n", sfile);
		FUNC1(sfile);
	}

	//Close old file when we don't need the socket fd, so it's safe to install the ofile back when spawn failed
	if (ofile && !retval) {
		FUNC0(DEBUG, "Close old file 0x%p\n", ofile);
		FUNC1(ofile);
	}

	return 0;
}