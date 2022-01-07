
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pool; } ;
typedef TYPE_1__ apr_bucket_pool ;
struct TYPE_8__ {int (* destroy ) (TYPE_1__*) ;} ;


 int apr_bucket_free (TYPE_1__*) ;
 scalar_t__ apr_bucket_shared_destroy (TYPE_1__*) ;
 TYPE_4__ apr_bucket_type_heap ;
 int apr_pool_cleanup_kill (scalar_t__,TYPE_1__*,int ) ;
 int pool_bucket_cleanup ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void pool_bucket_destroy(void *data)
{
    apr_bucket_pool *p = data;







    if (p->pool) {



        if (apr_bucket_shared_destroy(p)) {
            apr_pool_cleanup_kill(p->pool, p, pool_bucket_cleanup);
            apr_bucket_free(p);
        }
    }
    else {





        apr_bucket_type_heap.destroy(p);
    }
}
