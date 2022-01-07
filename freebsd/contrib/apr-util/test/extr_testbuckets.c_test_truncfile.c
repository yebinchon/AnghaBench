
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;
typedef int apr_file_t ;
typedef int apr_bucket_brigade ;
typedef int apr_bucket_alloc_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_BLOCK_READ ;
 int * APR_BRIGADE_FIRST (int *) ;
 scalar_t__ APR_BRIGADE_SENTINEL (int *) ;
 scalar_t__ APR_BUCKET_NEXT (int *) ;
 scalar_t__ APR_EOF ;
 int * apr_brigade_create (int ,int *) ;
 int apr_brigade_destroy (int *) ;
 int apr_brigade_insert_file (int *,int *,int ,int,int ) ;
 int * apr_bucket_alloc_create (int ) ;
 int apr_bucket_alloc_destroy (int *) ;
 int apr_bucket_file_enable_mmap (int *,int ) ;
 scalar_t__ apr_bucket_read (int *,char const**,scalar_t__*,int ) ;
 int apr_file_close (int *) ;
 int apr_file_trunc (int *,int ) ;
 int * make_test_file (int *,char*,char*) ;
 int p ;

__attribute__((used)) static void test_truncfile(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = apr_bucket_alloc_create(p);
    apr_bucket_brigade *bb = apr_brigade_create(p, ba);
    apr_file_t *f = make_test_file(tc, "testfile.txt", "hello");
    apr_bucket *e;
    const char *buf;
    apr_size_t len;

    apr_brigade_insert_file(bb, f, 0, 5, p);

    apr_file_trunc(f, 0);

    e = APR_BRIGADE_FIRST(bb);

    ABTS_ASSERT(tc, "single bucket in brigade",
                APR_BUCKET_NEXT(e) == APR_BRIGADE_SENTINEL(bb));

    apr_bucket_file_enable_mmap(e, 0);

    ABTS_ASSERT(tc, "read gave APR_EOF",
                apr_bucket_read(e, &buf, &len, APR_BLOCK_READ) == APR_EOF);

    ABTS_ASSERT(tc, "read length 0", len == 0);

    ABTS_ASSERT(tc, "still a single bucket in brigade",
                APR_BUCKET_NEXT(e) == APR_BRIGADE_SENTINEL(bb));

    apr_file_close(f);
    apr_brigade_destroy(bb);
    apr_bucket_alloc_destroy(ba);
}
