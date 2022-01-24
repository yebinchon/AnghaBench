#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct inode * inode)
{
	return (inode && FUNC1(inode->i_mode) && 
		FUNC0(inode)->type == SOCK_STREAM);
}