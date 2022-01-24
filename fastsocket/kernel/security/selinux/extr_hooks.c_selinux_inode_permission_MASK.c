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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 struct cred* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cred const*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, int mask)
{
	const struct cred *cred = FUNC0();

	if (!mask) {
		/* No permission to check.  Existence test. */
		return 0;
	}

	return FUNC2(cred, inode,
			      FUNC1(inode->i_mode, mask), NULL);
}