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
struct svc_pool_map {unsigned int npools; int mode; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int SVC_POOL_AUTO ; 
 int SVC_POOL_GLOBAL ; 
#define  SVC_POOL_PERCPU 129 
#define  SVC_POOL_PERNODE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct svc_pool_map svc_pool_map ; 
 int FUNC2 () ; 
 int FUNC3 (struct svc_pool_map*) ; 
 int FUNC4 (struct svc_pool_map*) ; 
 int /*<<< orphan*/  svc_pool_map_mutex ; 

__attribute__((used)) static unsigned int
FUNC5(void)
{
	struct svc_pool_map *m = &svc_pool_map;
	int npools = -1;

	FUNC0(&svc_pool_map_mutex);

	if (m->count++) {
		FUNC1(&svc_pool_map_mutex);
		return m->npools;
	}

	if (m->mode == SVC_POOL_AUTO)
		m->mode = FUNC2();

	switch (m->mode) {
	case SVC_POOL_PERCPU:
		npools = FUNC3(m);
		break;
	case SVC_POOL_PERNODE:
		npools = FUNC4(m);
		break;
	}

	if (npools < 0) {
		/* default, or memory allocation failure */
		npools = 1;
		m->mode = SVC_POOL_GLOBAL;
	}
	m->npools = npools;

	FUNC1(&svc_pool_map_mutex);
	return m->npools;
}