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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct nameidata*) ; 

__attribute__((used)) static void
FUNC4(struct dentry *dentry, struct nameidata *nd, void *p)
{
	char *s = FUNC3(nd);

	FUNC1(P9_DEBUG_VFS, " %s %s\n", dentry->d_name.name,
		FUNC0(s) ? "<error>" : s);
	if (!FUNC0(s))
		FUNC2(s);
}