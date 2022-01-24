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
typedef  size_t uint32_t ;
typedef  size_t uint ;
struct vacm_user {size_t* secname; size_t sec_model; } ;
struct asn_oid {size_t len; size_t* subs; } ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 

__attribute__((used)) static void
FUNC1(struct asn_oid *oid, uint sub,
    const struct vacm_user *user)
{
	uint32_t i;

	oid->len = sub + FUNC0(user->secname) + 2;
	oid->subs[sub++] = user->sec_model;
	oid->subs[sub] = FUNC0(user->secname);
	for (i = 1; i <= FUNC0(user->secname); i++)
		oid->subs[sub + i] = user->secname[i - 1];
}