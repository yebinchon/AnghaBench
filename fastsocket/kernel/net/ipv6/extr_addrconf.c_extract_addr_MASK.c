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
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 struct in6_addr* FUNC0 (struct nlattr*) ; 
 scalar_t__ FUNC1 (struct nlattr*,struct in6_addr*,int) ; 

__attribute__((used)) static struct in6_addr *FUNC2(struct nlattr *addr, struct nlattr *local)
{
	struct in6_addr *pfx = NULL;

	if (addr)
		pfx = FUNC0(addr);

	if (local) {
		if (pfx && FUNC1(local, pfx, sizeof(*pfx)))
			pfx = NULL;
		else
			pfx = FUNC0(local);
	}

	return pfx;
}