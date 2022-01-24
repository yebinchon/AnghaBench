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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_info*,int,int) ; 
 int FUNC1 (struct ubifs_info*,union ubifs_key*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct ubifs_info *c, union ubifs_key *key,
			      int level, int lnum, int offs)
{
	int ret;

	ret = FUNC1(c, key, level, lnum, offs);
	if (ret < 0)
		return ret; /* Error code */
	if (ret == 0)
		if (FUNC0(c, lnum, offs))
			return 1;
	return ret;
}