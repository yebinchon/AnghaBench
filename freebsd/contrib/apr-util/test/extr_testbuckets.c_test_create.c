
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int ) ;
 int APR_BRIGADE_EMPTY (int *) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int p ;

__attribute__((used)) static void test_create(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba;
    apr_bucket_brigade *bb;

    ba = apr_bucket_alloc_create(p);
    bb = apr_brigade_create(p, ba);

    ABTS_ASSERT(tc, "new brigade not NULL", bb != ((void*)0));
    ABTS_ASSERT(tc, "new brigade is empty", APR_BRIGADE_EMPTY(bb));

    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
