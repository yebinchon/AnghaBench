
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_off_t ;
typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int COUNT ;
 int THESTR ;
 int apr_assert_success (int *,char*,int ) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int apr_brigade_length (int *,int,int*) ;
 int apr_brigade_write (int *,int *,int *,int ,int) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int p ;

__attribute__((used)) static void test_bwrite(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb = apr_brigade_create(p, ba);
    apr_off_t length;
    int n;

    for (n = 0; n < COUNT; n++) {
        apr_assert_success(tc, "brigade_write",
                           apr_brigade_write(bb, ((void*)0), ((void*)0),
                                             THESTR, sizeof THESTR));
    }

    apr_assert_success(tc, "determine brigade length",
                       apr_brigade_length(bb, 1, &length));

    ABTS_ASSERT(tc, "brigade has correct length",
                length == (COUNT * sizeof THESTR));

    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
