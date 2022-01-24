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
struct path {int /*<<< orphan*/  dentry; TYPE_1__* mnt; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILESYSTEM__REMOUNT ; 
 int /*<<< orphan*/  FILE__MOUNTON ; 
 unsigned long MS_REMOUNT ; 
 struct cred* FUNC0 () ; 
 int FUNC1 (struct cred const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(char *dev_name,
			 struct path *path,
			 char *type,
			 unsigned long flags,
			 void *data)
{
	const struct cred *cred = FUNC0();

	if (flags & MS_REMOUNT)
		return FUNC2(cred, path->mnt->mnt_sb,
					   FILESYSTEM__REMOUNT, NULL);
	else
		return FUNC1(cred, path->mnt, path->dentry,
				       FILE__MOUNTON);
}