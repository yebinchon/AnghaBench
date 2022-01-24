#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ pool; } ;
typedef  TYPE_1__ apr_bucket_pool ;
struct TYPE_8__ {int /*<<< orphan*/  (* destroy ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_4__ apr_bucket_type_heap ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pool_bucket_cleanup ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(void *data)
{
    apr_bucket_pool *p = data;

    /* If the pool is cleaned up before the last reference goes
     * away, the data is really now on the heap; heap_destroy() takes
     * over.  free() in heap_destroy() thinks it's freeing
     * an apr_bucket_heap, when in reality it's freeing the whole
     * apr_bucket_pool for us.
     */
    if (p->pool) {
        /* the shared resource is still in the pool
         * because the pool has not been cleaned up yet
         */
        if (FUNC1(p)) {
            FUNC2(p->pool, p, pool_bucket_cleanup);
            FUNC0(p);
        }
    }
    else {
        /* the shared resource is no longer in the pool, it's
         * on the heap, but this reference still thinks it's a pool
         * bucket.  we should just go ahead and pass control to
         * heap_destroy() for it since it doesn't know any better.
         */
        apr_bucket_type_heap.destroy(p);
    }
}