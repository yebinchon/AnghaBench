
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int APR_SUCCESS ;
 int * apr_array_make (int *,int,int) ;
 scalar_t__ apr_array_push (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 char* apr_strtok (char*,char*,char**) ;
 char* strchr (char*,char) ;

apr_status_t apr_filepath_list_split_impl(apr_array_header_t **pathelts,
                                          const char *liststr,
                                          char separator,
                                          apr_pool_t *p)
{
    char *path, *part, *ptr;
    char separator_string[2] = { '\0', '\0' };
    apr_array_header_t *elts;
    int nelts;

    separator_string[0] = separator;


    path = apr_pstrdup(p, liststr);
    for (nelts = 0, ptr = path; ptr != ((void*)0); ++nelts)
    {
        ptr = strchr(ptr, separator);
        if (ptr)
            ++ptr;
    }


    elts = apr_array_make(p, nelts, sizeof(char*));
    while ((part = apr_strtok(path, separator_string, &ptr)) != ((void*)0))
    {
        if (*part == '\0')
            continue;

        *(char**)apr_array_push(elts) = part;
        path = ((void*)0);
    }

    *pathelts = elts;
    return APR_SUCCESS;
}
