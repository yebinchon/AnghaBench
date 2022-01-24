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
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int /*<<< orphan*/  i_mode; TYPE_1__ i_data; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
struct coda_vattr {int /*<<< orphan*/  va_rdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coda_dir_inode_operations ; 
 int /*<<< orphan*/  coda_dir_operations ; 
 int /*<<< orphan*/  coda_file_inode_operations ; 
 int /*<<< orphan*/  coda_file_operations ; 
 int /*<<< orphan*/  coda_symlink_aops ; 
 int /*<<< orphan*/  coda_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct coda_vattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, struct coda_vattr *attr)
{
        FUNC3(inode, attr);

        if (FUNC2(inode->i_mode)) {
                inode->i_op = &coda_file_inode_operations;
                inode->i_fop = &coda_file_operations;
        } else if (FUNC0(inode->i_mode)) {
                inode->i_op = &coda_dir_inode_operations;
                inode->i_fop = &coda_dir_operations;
        } else if (FUNC1(inode->i_mode)) {
		inode->i_op = &coda_symlink_inode_operations;
		inode->i_data.a_ops = &coda_symlink_aops;
		inode->i_mapping = &inode->i_data;
	} else
                FUNC5(inode, inode->i_mode, FUNC4(attr->va_rdev));
}