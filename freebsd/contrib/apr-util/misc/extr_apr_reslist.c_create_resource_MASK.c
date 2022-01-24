#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  apr_status_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  params; int /*<<< orphan*/  (* constructor ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ apr_reslist_t ;
struct TYPE_8__ {int /*<<< orphan*/  opaque; } ;
typedef  TYPE_2__ apr_res_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t FUNC2(apr_reslist_t *reslist, apr_res_t **ret_res)
{
    apr_status_t rv;
    apr_res_t *res;

    res = FUNC0(reslist);

    rv = reslist->constructor(&res->opaque, reslist->params, reslist->pool);

    *ret_res = res;
    return rv;
}