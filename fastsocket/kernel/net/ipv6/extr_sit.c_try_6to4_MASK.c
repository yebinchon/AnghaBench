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
struct in6_addr {int /*<<< orphan*/ * s6_addr16; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline __be32 FUNC2(struct in6_addr *v6dst)
{
	__be32 dst = 0;

	if (v6dst->s6_addr16[0] == FUNC0(0x2002)) {
		/* 6to4 v6 addr has 16 bits prefix, 32 v4addr, 16 SLA, ... */
		FUNC1(&dst, &v6dst->s6_addr16[1], 4);
	}
	return dst;
}