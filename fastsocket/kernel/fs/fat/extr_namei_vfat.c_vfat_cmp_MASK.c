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
struct qstr {int /*<<< orphan*/  name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct qstr*) ; 

__attribute__((used)) static int FUNC2(struct dentry *dentry, struct qstr *a, struct qstr *b)
{
	unsigned int alen, blen;

	/* A filename cannot end in '.' or we treat it like it has none */
	alen = FUNC1(a);
	blen = FUNC1(b);
	if (alen == blen) {
		if (FUNC0(a->name, b->name, alen) == 0)
			return 0;
	}
	return 1;
}