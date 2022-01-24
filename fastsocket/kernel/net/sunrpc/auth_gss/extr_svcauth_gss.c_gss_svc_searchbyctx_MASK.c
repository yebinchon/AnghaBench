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
struct xdr_netobj {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rsc {int /*<<< orphan*/  h; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  rsci ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rsc_cache ; 
 int /*<<< orphan*/  FUNC3 (struct rsc*) ; 
 struct rsc* FUNC4 (struct rsc*) ; 

__attribute__((used)) static struct rsc *
FUNC5(struct xdr_netobj *handle)
{
	struct rsc rsci;
	struct rsc *found;

	FUNC2(&rsci, 0, sizeof(rsci));
	if (FUNC1(&rsci.handle, handle->data, handle->len))
		return NULL;
	found = FUNC4(&rsci);
	FUNC3(&rsci);
	if (!found)
		return NULL;
	if (FUNC0(&rsc_cache, &found->h, NULL))
		return NULL;
	return found;
}