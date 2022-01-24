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
struct TYPE_2__ {scalar_t__ len; scalar_t__ name; } ;
struct dentry {TYPE_1__ d_name; scalar_t__ d_iname; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct dentry *dentry, struct dentry *target)
{
	if (FUNC0(target)) {
		if (FUNC0(dentry)) {
			/*
			 * Both external: swap the pointers
			 */
			FUNC2(target->d_name.name, dentry->d_name.name);
		} else {
			/*
			 * dentry:internal, target:external.  Steal target's
			 * storage and make target internal.
			 */
			FUNC1(target->d_iname, dentry->d_name.name,
					dentry->d_name.len + 1);
			dentry->d_name.name = target->d_name.name;
			target->d_name.name = target->d_iname;
		}
	} else {
		if (FUNC0(dentry)) {
			/*
			 * dentry:external, target:internal.  Give dentry's
			 * storage to target and make dentry internal
			 */
			FUNC1(dentry->d_iname, target->d_name.name,
					target->d_name.len + 1);
			target->d_name.name = dentry->d_name.name;
			dentry->d_name.name = dentry->d_iname;
		} else {
			/*
			 * Both are internal.  Just copy target to dentry
			 */
			FUNC1(dentry->d_iname, target->d_name.name,
					target->d_name.len + 1);
			dentry->d_name.len = target->d_name.len;
			return;
		}
	}
	FUNC2(dentry->d_name.len, target->d_name.len);
}