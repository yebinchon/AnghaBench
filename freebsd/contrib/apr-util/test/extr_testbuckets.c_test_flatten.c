
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int abts_case ;


 int apr_brigade_destroy (int *) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int flatten_match (int *,char*,int *,char*) ;
 int * make_simple_brigade (int *,char*,char*) ;
 int p ;

__attribute__((used)) static void test_flatten(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb;

    bb = make_simple_brigade(ba, "hello, ", "world");

    flatten_match(tc, "flatten brigade", bb, "hello, world");

    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
