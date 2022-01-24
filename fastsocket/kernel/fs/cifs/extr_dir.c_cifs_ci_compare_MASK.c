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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct nls_table {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct nls_table* local_nls; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nls_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dentry *dentry, struct qstr *a,
			   struct qstr *b)
{
	struct nls_table *codepage = FUNC0(dentry->d_inode->i_sb)->local_nls;

	if ((a->len == b->len) &&
	    (FUNC1(codepage, a->name, b->name, a->len) == 0))
		return 0;
	return 1;
}