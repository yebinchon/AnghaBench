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
struct inode {int dummy; } ;
struct file {scalar_t__ f_pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ADVISE_RDPLUS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
bool FUNC3(struct inode *dir, struct file *filp)
{
	if (!FUNC1(dir, NFS_CAP_READDIRPLUS))
		return false;
	if (FUNC2(NFS_INO_ADVISE_RDPLUS, &FUNC0(dir)->flags))
		return true;
	if (filp->f_pos == 0)
		return true;
	return false;
}