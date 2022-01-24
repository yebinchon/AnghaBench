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
struct TYPE_4__ {int /*<<< orphan*/  d_rcu; } ;
struct dentry {TYPE_2__ d_u; int /*<<< orphan*/  d_hash; TYPE_1__* d_op; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* d_release ) (struct dentry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d_callback ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 

__attribute__((used)) static void FUNC4(struct dentry *dentry)
{
	if (dentry->d_op && dentry->d_op->d_release)
		dentry->d_op->d_release(dentry);
	/* if dentry was never inserted into hash, immediate free is OK */
	if (FUNC2(&dentry->d_hash))
		FUNC0(dentry);
	else
		FUNC1(&dentry->d_u.d_rcu, d_callback);
}