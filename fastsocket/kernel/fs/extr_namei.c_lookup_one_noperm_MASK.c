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
 struct dentry* FUNC0 (int) ; 
 struct dentry* FUNC1 (struct qstr*,struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,struct qstr*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

struct dentry *FUNC4(const char *name, struct dentry *base)
{
	int err;
	struct qstr this;

	err = FUNC2(name, &this, base, FUNC3(name));
	if (err)
		return FUNC0(err);
	return FUNC1(&this, base, NULL);
}