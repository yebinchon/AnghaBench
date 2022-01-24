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
struct proc_ns_operations {int /*<<< orphan*/  (* put ) (void*) ;} ;
struct proc_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_data; } ;
struct TYPE_2__ {void* ns; struct proc_ns_operations* ns_ops; scalar_t__ sysctl; struct proc_dir_entry* pde; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct inode *inode)
{
	struct proc_dir_entry *de;
	const struct proc_ns_operations *ns_ops;
	void *ns;

	FUNC6(&inode->i_data, 0);

	/* Stop tracking associated processes */
	FUNC3(FUNC0(inode)->pid);

	/* Let go of any associated proc directory entry */
	de = FUNC0(inode)->pde;
	if (de)
		FUNC2(de);
	if (FUNC0(inode)->sysctl)
		FUNC5(FUNC0(inode)->sysctl);
	FUNC1(inode);
	/* Release any associated namespace */
	ns_ops = FUNC0(inode)->ns_ops;
	ns = FUNC0(inode)->ns;
	if (ns_ops && ns)
		ns_ops->put(ns);
}