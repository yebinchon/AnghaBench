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
 int FUNC1 (struct dentry*,char*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,char*) ; 

__attribute__((used)) static void *FUNC4(struct dentry *dentry, struct nameidata *nd)
{
	int error = -ENOMEM;
	unsigned long page = FUNC2(GFP_KERNEL);

	if (page) {
		error = FUNC1(dentry, (char *)page);
		if (!error) {
			FUNC3(nd, (char *)page);
			return (void *)page;
		}
	}

	FUNC3(nd, FUNC0(error));
	return NULL;
}