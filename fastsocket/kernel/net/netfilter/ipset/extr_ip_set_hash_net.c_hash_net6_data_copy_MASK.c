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
struct TYPE_2__ {int /*<<< orphan*/  in6; } ;
struct hash_net6_elem {int /*<<< orphan*/  cidr; TYPE_1__ ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(struct hash_net6_elem *dst,
		    const struct hash_net6_elem *src)
{
	FUNC0(&dst->ip.in6, &src->ip.in6);
	dst->cidr = src->cidr;
}