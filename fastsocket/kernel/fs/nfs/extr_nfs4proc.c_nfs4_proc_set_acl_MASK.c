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
struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs4_exception*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, const void *buf, size_t buflen)
{
	struct nfs4_exception exception = { };
	int err;
	do {
		err = FUNC2(FUNC0(inode),
				FUNC1(inode, buf, buflen),
				&exception);
	} while (exception.retry);
	return err;
}