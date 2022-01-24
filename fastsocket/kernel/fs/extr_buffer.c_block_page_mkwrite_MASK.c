#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {int dummy; } ;
struct vm_area_struct {TYPE_4__* vm_file; } ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  get_block_t ;
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct TYPE_8__ {TYPE_3__ f_path; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  SB_FREEZE_WRITE ; 
 int FUNC0 (struct vm_area_struct*,struct vm_fault*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 

int FUNC6(struct vm_area_struct *vma, struct vm_fault *vmf,
		   get_block_t get_block)
{
	int ret;
	__attribute__ ((unused)) struct super_block *sb = vma->vm_file->f_path.dentry->d_inode->i_sb;

	/*
	 *  OLD FREEZE PATH:
	 * This check is racy but catches the common case. The check in
	 * __block_page_mkwrite() is reliable.
	 */
	if (!FUNC3(sb))
		FUNC5(sb, SB_FREEZE_WRITE);

	FUNC4(sb);
	ret = FUNC0(vma, vmf, get_block);
	FUNC2(sb);
	return FUNC1(ret);
}