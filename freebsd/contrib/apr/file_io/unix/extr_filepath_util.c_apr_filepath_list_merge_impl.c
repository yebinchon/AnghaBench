
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int elt_size; int nelts; scalar_t__ elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int APR_EINVAL ;
 int APR_SUCCESS ;
 char* apr_palloc (int *,scalar_t__) ;
 int memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

apr_status_t apr_filepath_list_merge_impl(char **liststr,
                                          apr_array_header_t *pathelts,
                                          char separator,
                                          apr_pool_t *p)
{
    apr_size_t path_size = 0;
    char *path;
    int i;



    if (pathelts->elt_size != sizeof(char*))
        return APR_EINVAL;


    for (i = 0; i < pathelts->nelts; ++i)
        path_size += strlen(((char**)pathelts->elts)[i]);

    if (path_size == 0)
    {
        *liststr = ((void*)0);
        return APR_SUCCESS;
    }

    if (i > 0)
        path_size += (i - 1);


    path = *liststr = apr_palloc(p, path_size + 1);
    for (i = 0; i < pathelts->nelts; ++i)
    {


        const char *part = ((char**)pathelts->elts)[i];
        apr_size_t part_size = strlen(part);
        if (part_size == 0)
            continue;

        if (i > 0)
            *path++ = separator;
        memcpy(path, part, part_size);
        path += part_size;
    }
    *path = '\0';
    return APR_SUCCESS;
}
