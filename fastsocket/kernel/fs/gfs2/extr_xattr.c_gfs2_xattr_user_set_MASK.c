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
 int /*<<< orphan*/  GFS2_EATYPE_USR ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,char const*,void const*,size_t,int) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, const char *name,
			       const void *value, size_t size, int flags)
{
	return FUNC0(inode, GFS2_EATYPE_USR, name, value, size, flags);
}