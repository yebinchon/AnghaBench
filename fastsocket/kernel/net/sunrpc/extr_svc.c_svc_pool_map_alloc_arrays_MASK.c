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
struct svc_pool_map {int /*<<< orphan*/ * to_pool; void* pool_to; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct svc_pool_map *m, unsigned int maxpools)
{
	m->to_pool = FUNC0(maxpools, sizeof(unsigned int), GFP_KERNEL);
	if (!m->to_pool)
		goto fail;
	m->pool_to = FUNC0(maxpools, sizeof(unsigned int), GFP_KERNEL);
	if (!m->pool_to)
		goto fail_free;

	return 0;

fail_free:
	FUNC1(m->to_pool);
	m->to_pool = NULL;
fail:
	return -ENOMEM;
}