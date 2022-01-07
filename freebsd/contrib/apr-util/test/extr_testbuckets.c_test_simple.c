
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_BRIGADE_EMPTY (int *) ;
 int * APR_BRIGADE_FIRST (int *) ;
 int APR_BRIGADE_INSERT_HEAD (int *,int *) ;
 int * APR_BRIGADE_SENTINEL (int *) ;
 int APR_BUCKET_INSERT_BEFORE (int *,int *) ;
 int * APR_BUCKET_NEXT (int *) ;
 int * APR_BUCKET_PREV (int *) ;
 int apr_brigade_cleanup (int *) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int * apr_bucket_flush_create (int *) ;
 int * apr_bucket_transient_create (char*,int,int *) ;
 int p ;

__attribute__((used)) static void test_simple(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba;
    apr_bucket_brigade *bb;
    apr_bucket *fb, *tb;

    ba = apr_bucket_alloc_create(p);
    bb = apr_brigade_create(p, ba);

    fb = APR_BRIGADE_FIRST(bb);
    ABTS_ASSERT(tc, "first bucket of empty brigade is sentinel",
                fb == APR_BRIGADE_SENTINEL(bb));

    fb = apr_bucket_flush_create(ba);
    APR_BRIGADE_INSERT_HEAD(bb, fb);

    ABTS_ASSERT(tc, "first bucket of brigade is flush",
                APR_BRIGADE_FIRST(bb) == fb);

    ABTS_ASSERT(tc, "bucket after flush is sentinel",
                APR_BUCKET_NEXT(fb) == APR_BRIGADE_SENTINEL(bb));

    tb = apr_bucket_transient_create("aaa", 3, ba);
    APR_BUCKET_INSERT_BEFORE(fb, tb);

    ABTS_ASSERT(tc, "bucket before flush now transient",
                APR_BUCKET_PREV(fb) == tb);
    ABTS_ASSERT(tc, "bucket after transient is flush",
                APR_BUCKET_NEXT(tb) == fb);
    ABTS_ASSERT(tc, "bucket before transient is sentinel",
                APR_BUCKET_PREV(tb) == APR_BRIGADE_SENTINEL(bb));

    apr_brigade_cleanup(bb);

    ABTS_ASSERT(tc, "cleaned up brigade was empty", APR_BRIGADE_EMPTY(bb));

    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
