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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EACCES ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 scalar_t__ FUNC0 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct inode *inode, int mask)
{
        int error = 0;

	mask &= MAY_READ | MAY_WRITE | MAY_EXEC;
 
	if (!mask)
		return 0; 

	if ((mask & MAY_EXEC) && !FUNC3(inode))
		return -EACCES;

	FUNC4();

	if (FUNC0(inode, mask))
		goto out; 

        error = FUNC6(inode->i_sb, FUNC2(inode), mask);
    
	if (!error)
		FUNC1(inode, mask);

 out:
	FUNC5();
	return error;
}