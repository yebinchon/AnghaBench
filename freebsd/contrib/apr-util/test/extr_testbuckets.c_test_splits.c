
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int ABTS_STR_NEQUAL (int *,char*,char const*,int) ;
 int APR_BLOCK_READ ;
 int * APR_BRIGADE_FIRST (int *) ;
 int APR_BRIGADE_INSERT_TAIL (int *,int ) ;
 int * APR_BRIGADE_SENTINEL (int *) ;
 int * APR_BUCKET_NEXT (int *) ;
 scalar_t__ APR_SUCCESS ;
 int apr_assert_success (int *,char*,int ) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int apr_bucket_delete (int *) ;
 int apr_bucket_heap_create (int ,int,int ,int *) ;
 int apr_bucket_immortal_create (char*,int,int *) ;
 int apr_bucket_pool_create (int ,int,int ,int *) ;
 int apr_bucket_read (int *,char const**,int*,int ) ;
 scalar_t__ apr_bucket_split (int *,int) ;
 int apr_bucket_transient_create (char*,int,int *) ;
 int apr_pstrdup (int ,char*) ;
 int count_buckets (int *) ;
 int flatten_match (int *,char*,int *,char*) ;
 int free ;
 int p ;
 int strdup (char*) ;

__attribute__((used)) static void test_splits(abts_case *tc, void *ctx)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb;
    apr_bucket *e;
    char *str = "alphabeta";
    int n;

    bb = apr_brigade_create(p, ba);

    APR_BRIGADE_INSERT_TAIL(bb,
                            apr_bucket_immortal_create(str, 9, ba));
    APR_BRIGADE_INSERT_TAIL(bb,
                            apr_bucket_transient_create(str, 9, ba));
    APR_BRIGADE_INSERT_TAIL(bb,
                            apr_bucket_heap_create(strdup(str), 9, free, ba));
    APR_BRIGADE_INSERT_TAIL(bb,
                            apr_bucket_pool_create(apr_pstrdup(p, str), 9, p,
                                                   ba));

    ABTS_ASSERT(tc, "four buckets inserted", count_buckets(bb) == 4);


    for (n = 0, e = APR_BRIGADE_FIRST(bb); n < 4; n++) {
        ABTS_ASSERT(tc, "reached end of brigade",
                    e != APR_BRIGADE_SENTINEL(bb));
        ABTS_ASSERT(tc, "split bucket OK",
                    apr_bucket_split(e, 5) == APR_SUCCESS);
        e = APR_BUCKET_NEXT(e);
        ABTS_ASSERT(tc, "split OK", e != APR_BRIGADE_SENTINEL(bb));
        e = APR_BUCKET_NEXT(e);
    }

    ABTS_ASSERT(tc, "four buckets split into eight",
                count_buckets(bb) == 8);

    for (n = 0, e = APR_BRIGADE_FIRST(bb); n < 4; n++) {
        const char *data;
        apr_size_t len;

        apr_assert_success(tc, "read alpha from bucket",
                           apr_bucket_read(e, &data, &len, APR_BLOCK_READ));
        ABTS_ASSERT(tc, "read 5 bytes", len == 5);
        ABTS_STR_NEQUAL(tc, "alpha", data, 5);

        e = APR_BUCKET_NEXT(e);

        apr_assert_success(tc, "read beta from bucket",
                           apr_bucket_read(e, &data, &len, APR_BLOCK_READ));
        ABTS_ASSERT(tc, "read 4 bytes", len == 4);
        ABTS_STR_NEQUAL(tc, "beta", data, 5);

        e = APR_BUCKET_NEXT(e);
    }


    for (n = 0, e = APR_BRIGADE_FIRST(bb); n < 4; n++) {
        apr_bucket *f;

        ABTS_ASSERT(tc, "reached end of brigade",
                    e != APR_BRIGADE_SENTINEL(bb));
        f = APR_BUCKET_NEXT(e);
        apr_bucket_delete(e);
        e = APR_BUCKET_NEXT(f);
    }

    ABTS_ASSERT(tc, "eight buckets reduced to four",
                count_buckets(bb) == 4);

    flatten_match(tc, "flatten beta brigade", bb,
                  "beta" "beta" "beta" "beta");

    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
