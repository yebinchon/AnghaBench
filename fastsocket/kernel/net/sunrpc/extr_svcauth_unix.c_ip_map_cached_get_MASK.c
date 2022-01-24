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
struct svc_xprt {int /*<<< orphan*/  xpt_lock; struct ip_map* xpt_auth_cache; int /*<<< orphan*/  xpt_flags; } ;
struct ip_map {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_CACHE_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip_map_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct ip_map *
FUNC6(struct svc_xprt *xprt)
{
	struct ip_map *ipm = NULL;

	if (FUNC5(XPT_CACHE_AUTH, &xprt->xpt_flags)) {
		FUNC3(&xprt->xpt_lock);
		ipm = xprt->xpt_auth_cache;
		if (ipm != NULL) {
			if (!FUNC2(&ipm->h)) {
				/*
				 * The entry has been invalidated since it was
				 * remembered, e.g. by a second mount from the
				 * same IP address.
				 */
				xprt->xpt_auth_cache = NULL;
				FUNC4(&xprt->xpt_lock);
				FUNC1(&ipm->h, &ip_map_cache);
				return NULL;
			}
			FUNC0(&ipm->h);
		}
		FUNC4(&xprt->xpt_lock);
	}
	return ipm;
}