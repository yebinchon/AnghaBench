
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_BRIGADE_FIRST (int *) ;
 int APR_BRIGADE_INSERT_HEAD (int *,int *) ;
 int APR_BRIGADE_LAST (int *) ;
 int * APR_BRIGADE_SENTINEL (int *) ;
 int apr_assert_success (int *,char*,int) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int apr_brigade_partition (int *,int,int **) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int * apr_bucket_immortal_create (int ,int ,int *) ;
 int hello ;
 int p ;
 int strlen (int ) ;
 int test_bucket_content (int *,int ,char*,int) ;

__attribute__((used)) static void test_partition(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb = apr_brigade_create(p, ba);
    apr_bucket *e;

    e = apr_bucket_immortal_create(hello, strlen(hello), ba);
    APR_BRIGADE_INSERT_HEAD(bb, e);

    apr_assert_success(tc, "partition brigade",
                       apr_brigade_partition(bb, 5, &e));

    test_bucket_content(tc, APR_BRIGADE_FIRST(bb),
                        "hello", 5);

    test_bucket_content(tc, APR_BRIGADE_LAST(bb),
                        ", world", 7);

    ABTS_ASSERT(tc, "partition returns APR_INCOMPLETE",
                apr_brigade_partition(bb, 8192, &e));

    ABTS_ASSERT(tc, "APR_INCOMPLETE partition returned sentinel",
                e == APR_BRIGADE_SENTINEL(bb));

    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
