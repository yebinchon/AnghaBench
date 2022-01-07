
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
typedef int apr_os_dir_t ;
struct TYPE_3__ {int * dirstruct; } ;
typedef TYPE_1__ apr_dir_t ;


 int APR_ENODIR ;
 int APR_SUCCESS ;

apr_status_t apr_os_dir_get(apr_os_dir_t **thedir, apr_dir_t *dir)
{
    if (dir == ((void*)0)) {
        return APR_ENODIR;
    }
    *thedir = dir->dirstruct;
    return APR_SUCCESS;
}
