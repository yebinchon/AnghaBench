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
struct svc_pool_map {scalar_t__ npools; int /*<<< orphan*/ * pool_to; int /*<<< orphan*/ * to_pool; int /*<<< orphan*/  mode; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVC_POOL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct svc_pool_map svc_pool_map ; 
 int /*<<< orphan*/  svc_pool_map_mutex ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct svc_pool_map *m = &svc_pool_map;

	FUNC1(&svc_pool_map_mutex);

	if (!--m->count) {
		m->mode = SVC_POOL_DEFAULT;
		FUNC0(m->to_pool);
		m->to_pool = NULL;
		FUNC0(m->pool_to);
		m->pool_to = NULL;
		m->npools = 0;
	}

	FUNC2(&svc_pool_map_mutex);
}