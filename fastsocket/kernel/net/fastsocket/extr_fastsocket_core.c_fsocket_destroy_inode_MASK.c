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
struct socket_alloc {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct socket_alloc*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

void FUNC6(struct inode *inode)
{
	FUNC0(DEBUG, "Free inode 0x%p\n", inode);

	if (FUNC2(inode->i_mode)) {
		FUNC5(inode);
	}
	FUNC3(FUNC1(inode));
	FUNC4((struct socket_alloc*)(FUNC1(inode)));
}