
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int apr_status_t ;
typedef int apr_size_t ;
typedef int apr_read_type_e ;
struct TYPE_4__ {char* base; } ;
typedef TYPE_1__ apr_bucket_heap ;
struct TYPE_5__ {int start; int length; TYPE_1__* data; } ;
typedef TYPE_2__ apr_bucket ;


 int APR_SUCCESS ;

__attribute__((used)) static apr_status_t heap_bucket_read(apr_bucket *b, const char **str,
                                     apr_size_t *len, apr_read_type_e block)
{
    apr_bucket_heap *h = b->data;

    *str = h->base + b->start;
    *len = b->length;
    return APR_SUCCESS;
}
