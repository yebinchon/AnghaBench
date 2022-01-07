
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int APR_BRIGADE_FIRST (int *) ;
 int APR_BRIGADE_INSERT_HEAD (int *,int *) ;
 int APR_BRIGADE_LAST (int *) ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int * apr_brigade_split (int *,int ) ;
 int apr_brigade_write (int *,int *,int *,char*,int ) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int * apr_bucket_heap_create (char*,int ,int *,int *) ;
 int apr_bucket_split (int *,int ) ;
 char* hello ;
 int p ;
 int strlen (char*) ;
 int test_bucket_content (int *,int ,char*,int) ;

__attribute__((used)) static void test_write_split(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb1 = apr_brigade_create(p, ba);
    apr_bucket_brigade *bb2;
    apr_bucket *e;

    e = apr_bucket_heap_create(hello, strlen(hello), ((void*)0), ba);
    APR_BRIGADE_INSERT_HEAD(bb1, e);
    apr_bucket_split(e, strlen("hello, "));
    bb2 = apr_brigade_split(bb1, APR_BRIGADE_LAST(bb1));
    apr_brigade_write(bb1, ((void*)0), ((void*)0), "foo", strlen("foo"));
    test_bucket_content(tc, APR_BRIGADE_FIRST(bb2), "world", 5);

    apr_brigade_destroy(bb1);
    apr_brigade_destroy(bb2);
    apr_bucket_alloc_destroy(ba);
}
