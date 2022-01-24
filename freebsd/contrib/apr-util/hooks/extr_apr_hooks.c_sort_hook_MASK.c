#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_14__ {int nelts; scalar_t__ elts; } ;
typedef  TYPE_1__ apr_array_header_t ;
struct TYPE_16__ {int /*<<< orphan*/  pData; struct TYPE_16__* pNext; } ;
struct TYPE_15__ {char const* szName; } ;
typedef  TYPE_2__ TSortData ;
typedef  TYPE_3__ TSort ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ apr_hook_debug_enabled ; 
 int /*<<< orphan*/  apr_hook_global_pool ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_3__* FUNC9 (TYPE_3__*,int) ; 

__attribute__((used)) static apr_array_header_t *FUNC10(apr_array_header_t *pHooks,
                                     const char *szName)
{
    apr_pool_t *p;
    TSort *pSort;
    apr_array_header_t *pNew;
    int n;

    FUNC2(&p, apr_hook_global_pool);
    pSort=FUNC7(p,(TSortData *)pHooks->elts,pHooks->nelts);
    pSort=FUNC9(pSort,pHooks->nelts);
    pNew=FUNC0(apr_hook_global_pool,pHooks->nelts,sizeof(TSortData));
    if(apr_hook_debug_enabled)
        FUNC8("Sorting %s:",szName);
    for(n=0 ; pSort ; pSort=pSort->pNext,++n) {
        TSortData *pHook;
        FUNC4(n < pHooks->nelts);
        pHook=FUNC1(pNew);
        FUNC6(pHook,pSort->pData,sizeof *pHook);
        if(apr_hook_debug_enabled)
            FUNC8(" %s",pHook->szName);
    }
    if(apr_hook_debug_enabled)
        FUNC5('\n',stdout);

    /* destroy the pool - the sorted hooks were already copied */
    FUNC3(p);

    return pNew;
}