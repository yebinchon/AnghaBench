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
struct nameidata {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
struct TYPE_2__ {char* i_inline; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,char*) ; 

__attribute__((used)) static void *FUNC2(struct dentry *dentry, struct nameidata *nd)
{
	char *s = FUNC0(dentry->d_inode)->i_inline;
	FUNC1(nd, s);
	return NULL;
}