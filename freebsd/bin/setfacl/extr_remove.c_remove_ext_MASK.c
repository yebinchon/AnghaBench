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
typedef  int /*<<< orphan*/ * acl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  n_flag ; 

void
FUNC3(acl_t *prev_acl, const char *filename)
{
	acl_t acl_new;

	acl_new = FUNC1(*prev_acl, !n_flag);
	if (acl_new == NULL)
		FUNC2(1, "%s: acl_strip_np() failed", filename);

	FUNC0(*prev_acl);
	*prev_acl = acl_new;
}