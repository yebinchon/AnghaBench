
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_2__ {int dirstruct; } ;
typedef TYPE_1__ apr_dir_t ;


 int APR_SUCCESS ;
 scalar_t__ closedir (int ) ;
 int errno ;

__attribute__((used)) static apr_status_t dir_cleanup(void *thedir)
{
    apr_dir_t *dir = thedir;
    if (closedir(dir->dirstruct) == 0) {
        return APR_SUCCESS;
    }
    else {
        return errno;
    }
}
