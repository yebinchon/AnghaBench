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
struct path {TYPE_1__* dentry; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {scalar_t__ d_sb; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int LOOKUP_DIRECTORY ; 
 int LOOKUP_FOLLOW ; 
 struct config_item* FUNC0 (TYPE_1__*) ; 
 scalar_t__ configfs_sb ; 
 int FUNC1 (char const*,int,struct path*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 

__attribute__((used)) static int FUNC3(const char *symname, struct path *path,
		      struct config_item **target)
{
	int ret;

	ret = FUNC1(symname, LOOKUP_FOLLOW|LOOKUP_DIRECTORY, path);
	if (!ret) {
		if (path->dentry->d_sb == configfs_sb) {
			*target = FUNC0(path->dentry);
			if (!*target) {
				ret = -ENOENT;
				FUNC2(path);
			}
		} else
			ret = -EPERM;
	}

	return ret;
}