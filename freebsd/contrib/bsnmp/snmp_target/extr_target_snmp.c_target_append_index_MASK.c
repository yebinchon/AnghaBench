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
struct asn_oid {size_t len; char* subs; } ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 

__attribute__((used)) static void
FUNC1(struct asn_oid *oid, uint sub, const char *name)
{
	uint32_t i;

	oid->len = sub + FUNC0(name);
	for (i = 0; i < FUNC0(name); i++)
		oid->subs[sub + i] = name[i];
}