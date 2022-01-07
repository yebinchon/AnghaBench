
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_file_t ;
typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int abts_case ;


 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int apr_brigade_insert_file (int *,int *,int,int,int ) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int apr_file_close (int *) ;
 int flatten_match (int *,char*,int *,char*) ;
 int * make_test_file (int *,char*,char*) ;
 int p ;

__attribute__((used)) static void test_manyfile(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb = apr_brigade_create(p, ba);
    apr_file_t *f;

    f = make_test_file(tc, "manyfile.bin",
                       "world" "hello" "brave" " ,\n");

    apr_brigade_insert_file(bb, f, 5, 5, p);
    apr_brigade_insert_file(bb, f, 16, 1, p);
    apr_brigade_insert_file(bb, f, 15, 1, p);
    apr_brigade_insert_file(bb, f, 10, 5, p);
    apr_brigade_insert_file(bb, f, 15, 1, p);
    apr_brigade_insert_file(bb, f, 0, 5, p);
    apr_brigade_insert_file(bb, f, 17, 1, p);


    flatten_match(tc, "file seek test", bb,
                  "hello, brave world\n");

    apr_file_close(f);
    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
