
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 char const PATH_SEPARATOR ;
 char const* apr_pstrndup (int *,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *path_canonicalize (const char *path, apr_pool_t *pool)
{


    apr_size_t len = strlen (path);
    apr_size_t orig_len = len;

    while ((len > 0) && (path[len - 1] == PATH_SEPARATOR))
        len--;

    if (len != orig_len)
        return apr_pstrndup (pool, path, len);
    else
        return path;
}
