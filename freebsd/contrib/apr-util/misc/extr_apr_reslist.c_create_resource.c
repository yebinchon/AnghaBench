
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_7__ {int pool; int params; int (* constructor ) (int *,int ,int ) ;} ;
typedef TYPE_1__ apr_reslist_t ;
struct TYPE_8__ {int opaque; } ;
typedef TYPE_2__ apr_res_t ;


 TYPE_2__* get_container (TYPE_1__*) ;
 int stub1 (int *,int ,int ) ;

__attribute__((used)) static apr_status_t create_resource(apr_reslist_t *reslist, apr_res_t **ret_res)
{
    apr_status_t rv;
    apr_res_t *res;

    res = get_container(reslist);

    rv = reslist->constructor(&res->opaque, reslist->params, reslist->pool);

    *ret_res = res;
    return rv;
}
