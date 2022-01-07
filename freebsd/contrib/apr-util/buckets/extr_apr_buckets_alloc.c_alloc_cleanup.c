
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_2__ {scalar_t__ allocator; scalar_t__ pool; int blocks; } ;
typedef TYPE_1__ apr_bucket_alloc_t ;


 int APR_SUCCESS ;
 int apr_allocator_destroy (scalar_t__) ;
 int apr_allocator_free (scalar_t__,int ) ;
 scalar_t__ apr_pool_allocator_get (scalar_t__) ;

__attribute__((used)) static apr_status_t alloc_cleanup(void *data)
{
    apr_bucket_alloc_t *list = data;

    apr_allocator_free(list->allocator, list->blocks);







    return APR_SUCCESS;
}
