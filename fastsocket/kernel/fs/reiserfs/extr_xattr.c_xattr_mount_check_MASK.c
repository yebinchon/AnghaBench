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
struct super_block {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,char*) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 

__attribute__((used)) static int FUNC3(struct super_block *s)
{
	/* We need generation numbers to ensure that the oid mapping is correct
	 * v3.5 filesystems don't have them. */
	if (FUNC0(s)) {
		if (FUNC2(s)) {
			/* Old format filesystem, but optional xattrs have
			 * been enabled. Error out. */
			FUNC1(s, "jdm-2005",
					 "xattrs/ACLs not supported "
					 "on pre-v3.6 format filesystems. "
					 "Failing mount.");
			return -EOPNOTSUPP;
		}
	}

	return 0;
}