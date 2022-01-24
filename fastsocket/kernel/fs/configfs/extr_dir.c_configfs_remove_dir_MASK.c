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
struct dentry {int dummy; } ;
struct config_item {int /*<<< orphan*/  ci_dentry; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

__attribute__((used)) static void FUNC3(struct config_item * item)
{
	struct dentry * dentry = FUNC0(item->ci_dentry);

	if (!dentry)
		return;

	FUNC2(dentry);
	/**
	 * Drop reference from dget() on entrance.
	 */
	FUNC1(dentry);
}