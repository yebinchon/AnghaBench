
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nidle; int avail_list; } ;
typedef TYPE_1__ apr_reslist_t ;
typedef int apr_res_t ;


 int * APR_RING_FIRST (int *) ;
 int APR_RING_REMOVE (int *,int ) ;
 int link ;

__attribute__((used)) static apr_res_t *pop_resource(apr_reslist_t *reslist)
{
    apr_res_t *res;
    res = APR_RING_FIRST(&reslist->avail_list);
    APR_RING_REMOVE(res, link);
    reslist->nidle--;
    return res;
}
