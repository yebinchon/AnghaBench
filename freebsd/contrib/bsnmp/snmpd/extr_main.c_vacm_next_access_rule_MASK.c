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
struct vacm_access {int dummy; } ;

/* Variables and functions */
 struct vacm_access* FUNC0 (struct vacm_access*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vva ; 

struct vacm_access *
FUNC1(struct vacm_access *acl)
{
	if (acl == NULL)
		return (NULL);

	return (FUNC0(acl, vva));
}