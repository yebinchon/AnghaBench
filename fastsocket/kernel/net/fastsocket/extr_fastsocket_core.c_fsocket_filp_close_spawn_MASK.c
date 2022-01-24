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
struct file {struct file* sub_file; struct file* old_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct file*) ; 
 struct file* FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int) ; 

__attribute__((used)) static void FUNC5(int fd)
{
	int fput_needed;
	struct file *nfile, *ofile, *sfile;

	nfile = FUNC3(fd, &fput_needed);

	ofile = nfile->old_file;
	sfile = nfile->sub_file;

	FUNC2(fd, ofile);

	FUNC0(DEBUG, "Close sub file 0x%p\n", sfile);
	FUNC1(sfile);
	FUNC0(DEBUG, "Close new file 0x%p\n", nfile);
	FUNC1(nfile);

	FUNC4(nfile, fput_needed);
}