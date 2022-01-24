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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct file* vm_file; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct file {int /*<<< orphan*/  f_path; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,scalar_t__,scalar_t__) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(char *prefix, unsigned long ip)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;

	/*
	 * Do not print if we are in atomic
	 * contexts (in exception stacks, etc.):
	 */
	if (FUNC6())
		return;

	FUNC3(&mm->mmap_sem);
	vma = FUNC4(mm, ip);
	if (vma && vma->vm_file) {
		struct file *f = vma->vm_file;
		char *buf = (char *)FUNC1(GFP_KERNEL);
		if (buf) {
			char *p, *s;

			p = FUNC2(&f->f_path, buf, PAGE_SIZE);
			if (FUNC0(p))
				p = "?";
			s = FUNC8(p, '/');
			if (s)
				p = s+1;
			FUNC7("%s%s[%lx+%lx]", prefix, p,
					vma->vm_start,
					vma->vm_end - vma->vm_start);
			FUNC5((unsigned long)buf);
		}
	}
	FUNC9(&current->mm->mmap_sem);
}