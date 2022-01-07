
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int apr_pool_t ;
struct TYPE_14__ {int nelts; scalar_t__ elts; } ;
typedef TYPE_1__ apr_array_header_t ;
struct TYPE_16__ {int pData; struct TYPE_16__* pNext; } ;
struct TYPE_15__ {char const* szName; } ;
typedef TYPE_2__ TSortData ;
typedef TYPE_3__ TSort ;


 TYPE_1__* apr_array_make (int ,int,int) ;
 TYPE_2__* apr_array_push (TYPE_1__*) ;
 scalar_t__ apr_hook_debug_enabled ;
 int apr_hook_global_pool ;
 int apr_pool_create (int **,int ) ;
 int apr_pool_destroy (int *) ;
 int assert (int) ;
 int fputc (char,int ) ;
 int memcpy (TYPE_2__*,int ,int) ;
 TYPE_3__* prepare (int *,TYPE_2__*,int) ;
 int printf (char*,char const*) ;
 int stdout ;
 TYPE_3__* tsort (TYPE_3__*,int) ;

__attribute__((used)) static apr_array_header_t *sort_hook(apr_array_header_t *pHooks,
                                     const char *szName)
{
    apr_pool_t *p;
    TSort *pSort;
    apr_array_header_t *pNew;
    int n;

    apr_pool_create(&p, apr_hook_global_pool);
    pSort=prepare(p,(TSortData *)pHooks->elts,pHooks->nelts);
    pSort=tsort(pSort,pHooks->nelts);
    pNew=apr_array_make(apr_hook_global_pool,pHooks->nelts,sizeof(TSortData));
    if(apr_hook_debug_enabled)
        printf("Sorting %s:",szName);
    for(n=0 ; pSort ; pSort=pSort->pNext,++n) {
        TSortData *pHook;
        assert(n < pHooks->nelts);
        pHook=apr_array_push(pNew);
        memcpy(pHook,pSort->pData,sizeof *pHook);
        if(apr_hook_debug_enabled)
            printf(" %s",pHook->szName);
    }
    if(apr_hook_debug_enabled)
        fputc('\n',stdout);


    apr_pool_destroy(p);

    return pNew;
}
