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
union ubifs_key {int /*<<< orphan*/ * u32; void** j32; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(const struct ubifs_info *c,
				 const union ubifs_key *from, void *to)
{
	union ubifs_key *t = to;

	t->j32[0] = FUNC0(from->u32[0]);
	t->j32[1] = FUNC0(from->u32[1]);
}