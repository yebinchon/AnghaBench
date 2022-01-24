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
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct dentry*,struct qstr*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  rename_lock ; 

struct dentry * FUNC3(struct dentry * parent, struct qstr * name)
{
	struct dentry * dentry = NULL;
	unsigned long seq;

        do {
                seq = FUNC1(&rename_lock);
                dentry = FUNC0(parent, name);
                if (dentry)
			break;
	} while (FUNC2(&rename_lock, seq));
	return dentry;
}