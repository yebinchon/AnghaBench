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
struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 struct p9_fid* FUNC1 (struct p9_fid*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct p9_fid* FUNC2 (struct dentry*) ; 

struct p9_fid *FUNC3(struct dentry *dentry)
{
	struct p9_fid *fid, *ret;

	fid = FUNC2(dentry);
	if (FUNC0(fid))
		return fid;

	ret = FUNC1(fid, 0, NULL, 1);
	return ret;
}