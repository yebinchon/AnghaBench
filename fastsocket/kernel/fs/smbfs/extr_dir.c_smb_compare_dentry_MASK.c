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
struct qstr {int len; int /*<<< orphan*/ * name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct dentry *dir, struct qstr *a, struct qstr *b)
{
	int i, result = 1;

	if (a->len != b->len)
		goto out;
	for (i=0; i < a->len; i++) {
		if (FUNC0(a->name[i]) != FUNC0(b->name[i]))
			goto out;
	}
	result = 0;
out:
	return result;
}