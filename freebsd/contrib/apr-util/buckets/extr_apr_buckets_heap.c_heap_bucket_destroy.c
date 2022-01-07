
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; int (* free_func ) (int ) ;} ;
typedef TYPE_1__ apr_bucket_heap ;


 int apr_bucket_free (TYPE_1__*) ;
 scalar_t__ apr_bucket_shared_destroy (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void heap_bucket_destroy(void *data)
{
    apr_bucket_heap *h = data;

    if (apr_bucket_shared_destroy(h)) {
        (*h->free_func)(h->base);
        apr_bucket_free(h);
    }
}
