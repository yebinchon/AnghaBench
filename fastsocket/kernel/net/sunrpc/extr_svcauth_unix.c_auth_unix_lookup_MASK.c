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
struct net {int dummy; } ;
struct ip_map {scalar_t__ m_add_change; int /*<<< orphan*/  h; TYPE_1__* m_client; } ;
struct in6_addr {int dummy; } ;
struct auth_domain {int /*<<< orphan*/  ref; } ;
struct TYPE_2__ {scalar_t__ addr_changes; struct auth_domain h; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip_map_cache ; 
 struct ip_map* FUNC2 (struct net*,char*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct auth_domain *FUNC5(struct net *net, struct in6_addr *addr)
{
	struct ip_map *ipm;
	struct auth_domain *rv;

	ipm = FUNC2(net, "nfsd", addr);

	if (!ipm)
		return NULL;
	if (FUNC0(&ip_map_cache, &ipm->h, NULL))
		return NULL;

	if ((ipm->m_client->addr_changes - ipm->m_add_change) >0) {
		FUNC4(&ipm->h, &ip_map_cache);
		rv = NULL;
	} else {
		rv = &ipm->m_client->h;
		FUNC3(&rv->ref);
	}
	FUNC1(&ipm->h, &ip_map_cache);
	return rv;
}