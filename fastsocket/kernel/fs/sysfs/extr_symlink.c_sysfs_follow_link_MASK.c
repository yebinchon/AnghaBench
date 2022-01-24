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
struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,char*) ; 
 int FUNC4 (struct dentry*,char*) ; 

__attribute__((used)) static void *FUNC5(struct dentry *dentry, struct nameidata *nd)
{
	int error = -ENOMEM;
	unsigned long page = FUNC2(GFP_KERNEL);
	if (page) {
		error = FUNC4(dentry, (char *) page); 
		if (error < 0)
			FUNC1((unsigned long)page);
	}
	FUNC3(nd, error ? FUNC0(error) : (char *)page);
	return NULL;
}