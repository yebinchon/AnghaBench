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
typedef  size_t uint32_t ;
struct vacm_access {scalar_t__* ctx_prefix; scalar_t__ sec_model; scalar_t__ sec_level; TYPE_1__* group; } ;
struct TYPE_2__ {scalar_t__* groupname; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC1(struct vacm_access *v1, struct vacm_access *v2)
{
	uint32_t i;

	if (FUNC0(v1->group->groupname) < FUNC0(v2->group->groupname))
		return (-1);
	if (FUNC0(v1->group->groupname) > FUNC0(v2->group->groupname))
		return (1);

	for (i = 0; i < FUNC0(v1->group->groupname); i++) {
		if (v1->group->groupname[i] < v2->group->groupname[i])
			return (-1);
		if (v1->group->groupname[i] > v2->group->groupname[i])
			return (1);
	}

	if (FUNC0(v1->ctx_prefix) < FUNC0(v2->ctx_prefix))
		return (-1);
	if (FUNC0(v1->ctx_prefix) > FUNC0(v2->ctx_prefix))
		return (1);

	for (i = 0; i < FUNC0(v1->ctx_prefix); i++) {
		if (v1->ctx_prefix[i] < v2->ctx_prefix[i])
			return (-1);
		if (v1->ctx_prefix[i] > v2->ctx_prefix[i])
			return (1);
	}

	if (v1->sec_model < v2->sec_model)
		return (-1);
	if (v1->sec_model > v2->sec_model)
		return (1);

	if (v1->sec_level < v2->sec_level)
		return (-1);
	if (v1->sec_level > v2->sec_level)
		return (1);

	return (0);
}