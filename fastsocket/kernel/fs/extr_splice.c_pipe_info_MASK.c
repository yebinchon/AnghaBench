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
struct pipe_inode_info {int dummy; } ;
struct inode {struct pipe_inode_info* i_pipe; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct pipe_inode_info *FUNC1(struct inode *inode)
{
	if (FUNC0(inode->i_mode))
		return inode->i_pipe;

	return NULL;
}