
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
typedef int apr_memcache_t ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ apr_memcache_server_t ;


 int APR_MC_SERVER_LIVE ;
 int APR_SUCCESS ;

__attribute__((used)) static apr_status_t make_server_live(apr_memcache_t *mc, apr_memcache_server_t *ms)
{
    ms->status = APR_MC_SERVER_LIVE;
    return APR_SUCCESS;
}
