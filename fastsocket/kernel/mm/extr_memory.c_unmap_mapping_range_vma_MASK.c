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
struct zap_details {unsigned long truncate_count; int /*<<< orphan*/  i_mmap_lock; } ;
struct vm_area_struct {unsigned long vm_truncate_count; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct vm_area_struct*,unsigned long,unsigned long,struct zap_details*) ; 

__attribute__((used)) static int FUNC7(struct vm_area_struct *vma,
		unsigned long start_addr, unsigned long end_addr,
		struct zap_details *details)
{
	unsigned long restart_addr;
	int need_break;

	/*
	 * files that support invalidating or truncating portions of the
	 * file from under mmaped areas must have their ->fault function
	 * return a locked page (and set VM_FAULT_LOCKED in the return).
	 * This provides synchronisation against concurrent unmapping here.
	 */

again:
	restart_addr = vma->vm_truncate_count;
	if (FUNC1(restart_addr) && start_addr < restart_addr) {
		start_addr = restart_addr;
		if (start_addr >= end_addr) {
			/* Top of vma has been split off since last time */
			vma->vm_truncate_count = details->truncate_count;
			return 0;
		}
	}

	restart_addr = FUNC6(vma, start_addr,
					end_addr - start_addr, details);
	need_break = FUNC2() || FUNC4(details->i_mmap_lock);

	if (restart_addr >= end_addr) {
		/* We have now completed this vma: mark it so */
		vma->vm_truncate_count = details->truncate_count;
		if (!need_break)
			return 0;
	} else {
		/* Note restart_addr in vma's truncate_count field */
		vma->vm_truncate_count = restart_addr;
		if (!need_break)
			goto again;
	}

	FUNC5(details->i_mmap_lock);
	FUNC0();
	FUNC3(details->i_mmap_lock);
	return -EINTR;
}