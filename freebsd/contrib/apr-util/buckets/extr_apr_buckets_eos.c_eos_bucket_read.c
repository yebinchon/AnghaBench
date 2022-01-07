
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_read_type_e ;
typedef int apr_bucket ;


 int APR_SUCCESS ;

__attribute__((used)) static apr_status_t eos_bucket_read(apr_bucket *b, const char **str,
                                    apr_size_t *len, apr_read_type_e block)
{
    *str = ((void*)0);
    *len = 0;
    return APR_SUCCESS;
}
