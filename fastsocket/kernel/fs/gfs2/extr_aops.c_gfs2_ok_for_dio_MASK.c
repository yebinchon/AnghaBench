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
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gfs2_inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct gfs2_inode *ip, int rw, loff_t offset)
{
	/*
	 * Should we return an error here? I can't see that O_DIRECT for
	 * a stuffed file makes any sense. For now we'll silently fall
	 * back to buffered I/O
	 */
	if (FUNC0(ip))
		return 0;

	if (offset >= FUNC1(&ip->i_inode))
		return 0;
	return 1;
}