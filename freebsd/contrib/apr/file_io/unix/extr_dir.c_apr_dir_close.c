
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ apr_dir_t ;


 int apr_pool_cleanup_run (int ,TYPE_1__*,int ) ;
 int dir_cleanup ;

apr_status_t apr_dir_close(apr_dir_t *thedir)
{
    return apr_pool_cleanup_run(thedir->pool, thedir, dir_cleanup);
}
