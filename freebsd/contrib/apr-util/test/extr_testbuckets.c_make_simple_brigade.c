
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;


 int APR_BRIGADE_INSERT_TAIL (int *,int *) ;
 int * apr_brigade_create (int ,int *) ;
 int * apr_bucket_transient_create (char const*,int ,int *) ;
 int p ;
 int strlen (char const*) ;

__attribute__((used)) static apr_bucket_brigade *make_simple_brigade(apr_bucket_alloc_t *ba,
                                               const char *first,
                                               const char *second)
{
    apr_bucket_brigade *bb = apr_brigade_create(p, ba);
    apr_bucket *e;

    e = apr_bucket_transient_create(first, strlen(first), ba);
    APR_BRIGADE_INSERT_TAIL(bb, e);

    e = apr_bucket_transient_create(second, strlen(second), ba);
    APR_BRIGADE_INSERT_TAIL(bb, e);

    return bb;
}
