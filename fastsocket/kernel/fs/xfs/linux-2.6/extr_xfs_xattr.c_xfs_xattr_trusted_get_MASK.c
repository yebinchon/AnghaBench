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

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ROOT ; 
 int FUNC0 (struct inode*,char const*,void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct inode *inode, const char *name,
		void *value, size_t size)
{
	return FUNC0(inode, name, value, size, ATTR_ROOT);
}