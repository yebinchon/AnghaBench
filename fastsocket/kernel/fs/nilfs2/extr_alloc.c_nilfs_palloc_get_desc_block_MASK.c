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
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  nilfs_palloc_desc_block_init ; 

__attribute__((used)) static int FUNC2(struct inode *inode,
				       unsigned long group,
				       int create, struct buffer_head **bhp)
{
	return FUNC0(inode,
				   FUNC1(inode, group),
				   create, nilfs_palloc_desc_block_init, bhp);
}