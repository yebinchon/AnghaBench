
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_os_dir_t ;
struct TYPE_3__ {int * dirstruct; int * pool; } ;
typedef TYPE_1__ apr_dir_t ;


 int APR_SUCCESS ;
 scalar_t__ apr_pcalloc (int *,int) ;

apr_status_t apr_os_dir_put(apr_dir_t **dir, apr_os_dir_t *thedir,
                          apr_pool_t *pool)
{
    if ((*dir) == ((void*)0)) {
        (*dir) = (apr_dir_t *)apr_pcalloc(pool, sizeof(apr_dir_t));
        (*dir)->pool = pool;
    }
    (*dir)->dirstruct = thedir;
    return APR_SUCCESS;
}
