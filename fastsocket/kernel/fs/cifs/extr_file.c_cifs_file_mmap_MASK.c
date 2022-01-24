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
struct vm_area_struct {int /*<<< orphan*/ * vm_ops; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  cifs_file_vm_ops ; 
 int FUNC3 (struct file*) ; 
 int FUNC4 (struct file*,struct vm_area_struct*) ; 

int FUNC5(struct file *file, struct vm_area_struct *vma)
{
	int rc, xid;

	xid = FUNC1();
	rc = FUNC3(file);
	if (rc) {
		FUNC2(1, "Validation prior to mmap failed, error=%d", rc);
		FUNC0(xid);
		return rc;
	}
	rc = FUNC4(file, vma);
	if (rc == 0)
		vma->vm_ops = &cifs_file_vm_ops;
	FUNC0(xid);
	return rc;
}