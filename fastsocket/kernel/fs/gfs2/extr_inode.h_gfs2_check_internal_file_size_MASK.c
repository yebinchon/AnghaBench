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
typedef  int u64 ;
struct inode {int i_blkbits; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 

__attribute__((used)) static inline int FUNC3(struct inode *inode,
						u64 minsize, u64 maxsize)
{
	u64 size = FUNC2(inode);
	if (size < minsize || size > maxsize)
		goto err;
	if (size & ((1 << inode->i_blkbits) - 1))
		goto err;
	return 0;
err:
	FUNC1(FUNC0(inode));
	return -EIO;
}