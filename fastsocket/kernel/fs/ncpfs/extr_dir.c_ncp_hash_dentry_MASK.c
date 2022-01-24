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
struct qstr {int len; int /*<<< orphan*/  hash; int /*<<< orphan*/ * name; } ;
struct nls_table {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct nls_table* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nls_table*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int 
FUNC6(struct dentry *dentry, struct qstr *this)
{
	struct nls_table *t;
	unsigned long hash;
	int i;

	t = FUNC0(dentry);

	if (!FUNC3(dentry->d_inode)) {
		hash = FUNC2();
		for (i=0; i<this->len ; i++)
			hash = FUNC5(FUNC4(t, this->name[i]),
									hash);
		this->hash = FUNC1(hash);
	}
	return 0;
}