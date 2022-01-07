
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_fileperms_t ;


 scalar_t__ APR_STATUS_IS_EEXIST (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ ENOENT ;
 scalar_t__ apr_dir_make (char const*,int ,int *) ;
 char* path_remove_last_component (char const*,int *) ;

apr_status_t apr_dir_make_recursive(const char *path, apr_fileperms_t perm,
                                           apr_pool_t *pool)
{
    apr_status_t apr_err = 0;

    apr_err = apr_dir_make (path, perm, pool);

    if (apr_err == ENOENT) {
        char *dir;

        dir = path_remove_last_component(path, pool);

        if (dir[0] == '\0') {
            return apr_err;
        }

        apr_err = apr_dir_make_recursive(dir, perm, pool);

        if (!apr_err)
            apr_err = apr_dir_make (path, perm, pool);
    }






    if (APR_STATUS_IS_EEXIST(apr_err))
        return APR_SUCCESS;

    return apr_err;
}
