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
struct vm_fault {int /*<<< orphan*/  page; int /*<<< orphan*/  pgoff; } ;
struct vm_area_struct {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int VM_FAULT_SIGBUS ; 
 int FUNC0 (struct vm_area_struct*,struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct vm_area_struct *area, struct vm_fault *vmf)
{
	sigset_t blocked, oldset;
	int error, ret;

	FUNC1("(area=%p, page offset=%lu)\n", area, vmf->pgoff);

	error = FUNC4(&blocked, &oldset);
	if (error < 0) {
		FUNC2(error);
		ret = VM_FAULT_SIGBUS;
		goto out;
	}

	ret = FUNC0(area, vmf);

	error = FUNC5(&oldset);
	if (error < 0)
		FUNC2(error);
out:
	FUNC3(vmf->page);
	return ret;
}