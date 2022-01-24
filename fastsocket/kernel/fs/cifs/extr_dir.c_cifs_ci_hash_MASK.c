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
struct qstr {int len; int /*<<< orphan*/  hash; int /*<<< orphan*/ * name; } ;
struct nls_table {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct nls_table* local_nls; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nls_table*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, struct qstr *q)
{
	struct nls_table *codepage = FUNC0(dentry->d_inode->i_sb)->local_nls;
	unsigned long hash;
	int i;

	hash = FUNC2();
	for (i = 0; i < q->len; i++)
		hash = FUNC4(FUNC3(codepage, q->name[i]),
					 hash);
	q->hash = FUNC1(hash);

	return 0;
}