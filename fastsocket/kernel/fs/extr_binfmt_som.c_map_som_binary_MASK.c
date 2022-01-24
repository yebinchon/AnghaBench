#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct som_exec_auxhdr {int /*<<< orphan*/  exec_bsize; int /*<<< orphan*/  exec_dfile; int /*<<< orphan*/  exec_dsize; int /*<<< orphan*/  exec_dmem; int /*<<< orphan*/  exec_tfile; int /*<<< orphan*/  exec_tsize; int /*<<< orphan*/  exec_tmem; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  mm_segment_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long start_code; unsigned long end_code; unsigned long start_data; unsigned long end_data; unsigned long start_brk; unsigned long brk; int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int MAP_DENYWRITE ; 
 int MAP_EXECUTABLE ; 
 int MAP_FIXED ; 
 int MAP_PRIVATE ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int FUNC2 (struct file*,unsigned long,unsigned long,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct file *file,
		const struct som_exec_auxhdr *hpuxhdr)
{
	unsigned long code_start, code_size, data_start, data_size;
	unsigned long bss_start, som_brk;
	int retval;
	int prot = PROT_READ | PROT_EXEC;
	int flags = MAP_FIXED|MAP_PRIVATE|MAP_DENYWRITE|MAP_EXECUTABLE;

	mm_segment_t old_fs = FUNC5();
	FUNC6(FUNC4());

	code_start = FUNC1(hpuxhdr->exec_tmem);
	code_size = FUNC0(hpuxhdr->exec_tsize);
	current->mm->start_code = code_start;
	current->mm->end_code = code_start + code_size;
	FUNC3(&current->mm->mmap_sem);
	retval = FUNC2(file, code_start, code_size, prot,
			flags, FUNC1(hpuxhdr->exec_tfile));
	FUNC7(&current->mm->mmap_sem);
	if (retval < 0 && retval > -1024)
		goto out;

	data_start = FUNC1(hpuxhdr->exec_dmem);
	data_size = FUNC0(hpuxhdr->exec_dsize);
	current->mm->start_data = data_start;
	current->mm->end_data = bss_start = data_start + data_size;
	FUNC3(&current->mm->mmap_sem);
	retval = FUNC2(file, data_start, data_size,
			prot | PROT_WRITE, flags,
			FUNC1(hpuxhdr->exec_dfile));
	FUNC7(&current->mm->mmap_sem);
	if (retval < 0 && retval > -1024)
		goto out;

	som_brk = bss_start + FUNC0(hpuxhdr->exec_bsize);
	current->mm->start_brk = current->mm->brk = som_brk;
	FUNC3(&current->mm->mmap_sem);
	retval = FUNC2(NULL, bss_start, som_brk - bss_start,
			prot | PROT_WRITE, MAP_FIXED | MAP_PRIVATE, 0);
	FUNC7(&current->mm->mmap_sem);
	if (retval > 0 || retval < -1024)
		retval = 0;
out:
	FUNC6(old_fs);
	return retval;
}