
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int * APR_BRIGADE_LAST (int *) ;
 int apr_brigade_destroy (int *) ;
 int * apr_brigade_split (int *,int *) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int count_buckets (int *) ;
 int flatten_match (int *,char*,int *,char*) ;
 int * make_simple_brigade (int *,char*,char*) ;
 int p ;

__attribute__((used)) static void test_split(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb, *bb2;
    apr_bucket *e;

    bb = make_simple_brigade(ba, "hello, ", "world");


    e = APR_BRIGADE_LAST(bb);
    bb2 = apr_brigade_split(bb, e);

    ABTS_ASSERT(tc, "split brigade contains one bucket",
                count_buckets(bb2) == 1);
    ABTS_ASSERT(tc, "original brigade contains one bucket",
                count_buckets(bb) == 1);

    flatten_match(tc, "match original brigade", bb, "hello, ");
    flatten_match(tc, "match split brigade", bb2, "world");

    apr_brigade_destroy(bb2);
    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
