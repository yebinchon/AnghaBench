
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int abts_case ;


 int APR_BLOCK_READ ;
 int apr_assert_success (int *,char*,int ) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int apr_brigade_split_line (int *,int *,int ,int) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int flatten_match (int *,char*,int *,char*) ;
 int * make_simple_brigade (int *,char*,char*) ;
 int p ;

__attribute__((used)) static void test_splitline(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bin, *bout;

    bin = make_simple_brigade(ba, "blah blah blah-",
                              "end of line.\nfoo foo foo");
    bout = apr_brigade_create(p, ba);

    apr_assert_success(tc, "split line",
                       apr_brigade_split_line(bout, bin,
                                              APR_BLOCK_READ, 100));

    flatten_match(tc, "split line", bout, "blah blah blah-end of line.\n");
    flatten_match(tc, "remainder", bin, "foo foo foo");

    apr_brigade_destroy(bout);
    apr_brigade_destroy(bin);
    apr_bucket_alloc_destroy(ba);
}
