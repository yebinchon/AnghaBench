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
struct vm_area_struct {int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,struct vm_area_struct*) ; 
 int FUNC4 (struct dentry*) ; 

__attribute__((used)) static int
FUNC5(struct file * file, struct vm_area_struct * vma)
{
	struct dentry * dentry = file->f_path.dentry;
	int	status;

	FUNC2("file %s/%s, address %lu - %lu\n",
		FUNC0(dentry), vma->vm_start, vma->vm_end);

	status = FUNC4(dentry);
	if (status) {
		FUNC1("%s/%s validation failed, error=%d\n",
			 FUNC0(dentry), status);
		goto out;
	}
	status = FUNC3(file, vma);
out:
	return status;
}