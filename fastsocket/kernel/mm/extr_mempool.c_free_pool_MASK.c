#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* elements; int /*<<< orphan*/  pool_data; int /*<<< orphan*/  (* free ) (void*,int /*<<< orphan*/ ) ;scalar_t__ curr_nr; } ;
typedef  TYPE_1__ mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(mempool_t *pool)
{
	while (pool->curr_nr) {
		void *element = FUNC1(pool);
		pool->free(element, pool->pool_data);
	}
	FUNC0(pool->elements);
	FUNC0(pool);
}