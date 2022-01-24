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
 int /*<<< orphan*/  FUNC0 (struct super_block*,char*,int,char*) ; 

int FUNC1(struct super_block *s, int key, int *c1, int *c2,
		char *msg)
{
	if (*c2 && *c1 == key) {
		FUNC0(s, "cycle detected on key %08x in %s", key, msg);
		return 1;
	}
	(*c2)++;
	if (!((*c2 - 1) & *c2)) *c1 = key;
	return 0;
}