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
struct kstatfs {int /*<<< orphan*/  f_namelen; int /*<<< orphan*/  f_type; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_MAXPATHLEN ; 
 int /*<<< orphan*/  SMB_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct dentry*,struct kstatfs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(struct dentry *dentry, struct kstatfs *buf)
{
	int result;
	
	FUNC0();

	result = FUNC1(dentry, buf);

	FUNC2();

	buf->f_type = SMB_SUPER_MAGIC;
	buf->f_namelen = SMB_MAXPATHLEN;
	return result;
}