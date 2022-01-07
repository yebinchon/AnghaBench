
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int apr_size_t ;
typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int ABTS_STR_NEQUAL (int *,char const*,char*,int ) ;
 int APR_BRIGADE_INSERT_HEAD (int *,int *) ;
 int apr_assert_success (int *,char*,int ) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int apr_brigade_flatten (int *,char*,int*) ;
 int apr_brigade_putstrs (int *,int *,int *,char*,char*,...) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int * apr_bucket_heap_create (char*,int,int *,int *) ;
 int p ;
 int strlen (char const*) ;

__attribute__((used)) static void test_write_putstrs(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb = apr_brigade_create(p, ba);
    apr_bucket *e;
    char buf[30];
    apr_size_t len = sizeof(buf);
    const char *expect = "123456789abcdefghij";

    e = apr_bucket_heap_create("1", 1, ((void*)0), ba);
    APR_BRIGADE_INSERT_HEAD(bb, e);

    apr_brigade_putstrs(bb, ((void*)0), ((void*)0), "2", "34", "567", "8", "9a", "bcd",
                        "e", "f", "gh", "i", ((void*)0));
    apr_brigade_putstrs(bb, ((void*)0), ((void*)0), "j", ((void*)0));
    apr_assert_success(tc, "apr_brigade_flatten",
                       apr_brigade_flatten(bb, buf, &len));
    ABTS_STR_NEQUAL(tc, expect, buf, strlen(expect));

    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
