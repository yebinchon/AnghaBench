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
struct kobject {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobject*,char*,int) ; 
 int FUNC1 (struct kobject*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 

char *FUNC3(struct kobject *kobj, gfp_t gfp_mask)
{
	char *path;
	int len;

	len = FUNC1(kobj);
	if (len == 0)
		return NULL;
	path = FUNC2(len, gfp_mask);
	if (!path)
		return NULL;
	FUNC0(kobj, path, len);

	return path;
}