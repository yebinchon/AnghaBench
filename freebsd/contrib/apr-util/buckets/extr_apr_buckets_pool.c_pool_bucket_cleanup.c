
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_3__ {int alloc_len; int base; } ;
struct TYPE_4__ {int * pool; int * base; TYPE_1__ heap; int list; } ;
typedef TYPE_2__ apr_bucket_pool ;


 int APR_SUCCESS ;
 int apr_bucket_alloc (int ,int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static apr_status_t pool_bucket_cleanup(void *data)
{
    apr_bucket_pool *p = data;
    p->heap.base = apr_bucket_alloc(p->heap.alloc_len, p->list);
    memcpy(p->heap.base, p->base, p->heap.alloc_len);
    p->base = ((void*)0);
    p->pool = ((void*)0);

    return APR_SUCCESS;
}
