
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int apr_status_t ;
typedef int apr_size_t ;
typedef int apr_read_type_e ;
struct TYPE_5__ {char* base; } ;
struct TYPE_6__ {char* base; TYPE_1__ heap; int * pool; } ;
typedef TYPE_2__ apr_bucket_pool ;
struct TYPE_7__ {int start; int length; int * type; TYPE_2__* data; } ;
typedef TYPE_3__ apr_bucket ;


 int APR_SUCCESS ;
 int apr_bucket_type_heap ;

__attribute__((used)) static apr_status_t pool_bucket_read(apr_bucket *b, const char **str,
                                     apr_size_t *len, apr_read_type_e block)
{
    apr_bucket_pool *p = b->data;
    const char *base = p->base;

    if (p->pool == ((void*)0)) {




        b->type = &apr_bucket_type_heap;
        base = p->heap.base;
    }
    *str = base + b->start;
    *len = b->length;
    return APR_SUCCESS;
}
