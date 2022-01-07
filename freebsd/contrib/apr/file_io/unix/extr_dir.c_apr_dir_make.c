
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_fileperms_t ;


 int APR_SUCCESS ;
 int apr_unix_perms2mode (int ) ;
 int errno ;
 scalar_t__ mkdir (char const*,int ) ;

apr_status_t apr_dir_make(const char *path, apr_fileperms_t perm,
                          apr_pool_t *pool)
{
    mode_t mode = apr_unix_perms2mode(perm);

    if (mkdir(path, mode) == 0) {
        return APR_SUCCESS;
    }
    else {
        return errno;
    }
}
